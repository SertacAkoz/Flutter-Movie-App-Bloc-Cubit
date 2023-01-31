// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_bloc/bloc/movie_detail/movie_detail_cubit.dart';

import 'package:movie_bloc/bloc/movie_detail/movie_detail_style.dart';
import 'package:movie_bloc/util/utils.dart';

class MovieDetailView extends StatefulWidget {
  MovieDetailStyle style;
  String movieId;
  MovieDetailView({
    Key? key,
    required this.style,
    required this.movieId,
  }) : super(key: key);

  @override
  State<MovieDetailView> createState() => _MovieDetailViewState();
}

class _MovieDetailViewState extends State<MovieDetailView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieDetailCubit(),
      child: _buildScaffold(),
    );
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      backgroundColor: widget.style.backgroundColor,
      body: BlocConsumer<MovieDetailCubit, MovieDetailState>(
        listener: (context, state) {},
        builder: (context, state) {
          debugPrint('Movie Detail State : $state');
          if (state is MovieDetailInitial) {
            Utils.widgetBindingCallback(onTap: () {
              BlocProvider.of<MovieDetailCubit>(context)
                  .getMovieDetail(widget.movieId);
            });
            return _buildInitial();
          } else if (state is MovieDetailLoading) {
            return _buildLoading();
          } else if (state is MovieDetailCompleted) {
            return _buildCompleted(state);
          } else {
            final error = state as MovieDetailError;
            return _buildError(error);
          }
        },
      ),
    );
  }

  Widget _buildError(MovieDetailError error) {
    return Scaffold(
      backgroundColor: widget.style.backgroundColor,
      appBar: AppBar(backgroundColor: widget.style.backgroundColor),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Api Hatası',
            style: widget.style.getTitleTextStyle(),
          ),
          const SizedBox(height: 10),
          Text(
            error.error,
            style: widget.style.getSubTitleTextStyle(),
          ),
        ],
      ),
    );
  }

  CustomScrollView _buildCompleted(MovieDetailCompleted state) {
    debugPrint(
        'NULL : ${state.movieDetail.data!.data!.movie!.posterImage!.url}');
    return CustomScrollView(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          backgroundColor: widget.style.theme800,
          expandedHeight: 613.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Visibility(
              visible: false,
              child: Text('Goa', textScaleFactor: 1),
            ),
            background: Image.network(
              state.movieDetail.data!.data!.movie!.posterImage!.url!,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              // return ListTile(
              //   leading: Container(
              //     padding: const EdgeInsets.all(8),
              //     width: 100,
              //     child: const Placeholder(),
              //   ),
              //   title: Text('Place ${index + 1}', textScaleFactor: 2),
              // );
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const SizedBox(height: 10),
                  headerRow(state),
                  Divider(
                    color: widget.style.theme600,
                  ),
                  overview(state),
                  Divider(
                    color: widget.style.theme600,
                  ),
                  imageGallery(state),
                  Divider(
                    color: widget.style.theme600,
                  ),
                  actors(state),
                  // Divider(
                  //   color: widget.style.theme600,
                  // ),
                  audienceReviews(state),

                  const SizedBox(height: 50),
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }

  Padding headerRow(MovieDetailCompleted state) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              width: 200,
              height: 300,
              fit: BoxFit.fill,
              image: NetworkImage(
                state.movieDetail.data!.data!.movie!.posterImage!.url!,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        state.movieDetail.data!.data!.movie!.name!,
                        textAlign: TextAlign.center,
                        style: widget.style.getTitleTextStyle(),
                      ),
                      // const SizedBox(height: 5),
                      Divider(
                        color: widget.style.theme600,
                      ),
                      Text(
                        state.getMovieTypesAsString(),
                        textAlign: TextAlign.center,
                        style: widget.style.getSubTitleTextStyle(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget overview(MovieDetailCompleted state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Genel Bakış',
            style: widget.style.getTitleTextStyle(),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            state.movieDetail.data!.data!.movie!.synopsis!,
            style: widget.style.getContentTextSTyle(),
          ),
        ),
      ],
    );
  }

  Widget actors(MovieDetailCompleted state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Oyuncular',
            style: widget.style.getTitleTextStyle(),
          ),
        ),
        SizedBox(
          height: 400,
          child: ListView.builder(
            itemCount: state.movieDetail.data!.data!.movie!.cast?.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return actorListRow(state, index);
            },
          ),
        ),
      ],
    );
  }

  Widget audienceReviews(MovieDetailCompleted state) {
    int listlength;
    if (state.movieDetail.data!.data!.movie!.audienceReviews!.items!.length >
        10) {
      listlength = 10;
    } else {
      listlength =
          state.movieDetail.data!.data!.movie!.audienceReviews!.items!.length;
    }

    List<Widget> audienceList = [];

    for (var i = 0; i < listlength; i++) {
      audienceList.add(audienceReviewsListRow(state, i));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'İzleyici Yorumları',
            style: widget.style.getTitleTextStyle(),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: audienceList),
        ),
      ],
    );

    // return Expanded(
    //   child: ListView.builder(
    //     itemCount: listlength,
    //     shrinkWrap: true,
    //     physics: const NeverScrollableScrollPhysics(),
    //     itemBuilder: (BuildContext context, int index) {
    //       return audienceReviewsListRow(state, index);
    //     },
    //   ),
    // );
  }

  Widget imageGallery(MovieDetailCompleted state) {
    int listLength;
    if (state.movieDetail.data!.data!.movie!.images!.length > 8) {
      listLength = 8;
    } else {
      listLength = state.movieDetail.data!.data!.movie!.images!.length;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Galeri',
            style: widget.style.getTitleTextStyle(),
          ),
        ),
        const SizedBox(height: 10),
        CarouselSlider.builder(
          itemCount: listLength,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
            child: imageGalleryListRow(state, itemIndex),
          ),
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  Widget imageGalleryListRow(MovieDetailCompleted state, int index) {
    BoxFit boxFitValue;
    if (state.movieDetail.data!.data!.movie!.images![index].height! >
        state.movieDetail.data!.data!.movie!.images![index].width!) {
      boxFitValue = BoxFit.fitWidth;
    } else {
      boxFitValue = BoxFit.fitHeight;
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image(
        width: widget.style.getWidth(context) * 0.8,
        height: double.parse(state
            .movieDetail.data!.data!.movie!.images![index].height
            .toString()),
        fit: boxFitValue,
        image: NetworkImage(
          state.movieDetail.data!.data!.movie!.images![index].url!,
        ),
      ),
    );
  }

  Widget audienceReviewsListRow(MovieDetailCompleted state, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          state.movieDetail.data!.data!.movie!.audienceReviews!.items![index]
                  .comment ??
              '',
          style: widget.style.getContentTextSTyle(),
        ),
        Divider(
          color: widget.style.theme600,
        ),
      ],
    );
  }

  Widget actorListRow(MovieDetailCompleted state, int index) {
    // debugPrint('Index : $index | Url : ${state.movieDetail.data!.data!.movie!.cast![index].headShotImage!.url}');
    Widget photo = Container();
    if (state.movieDetail.data!.data!.movie!.cast![index].headShotImage !=
        null) {
      photo = ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          width: 200,
          height: 300,
          fit: BoxFit.fill,
          image: NetworkImage(
            state.movieDetail.data!.data!.movie!.cast![index].headShotImage!
                .url!,
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Image(
          //     width: 200,
          //     height: 300,
          //     fit: BoxFit.fill,
          //     image: NetworkImage(
          //       state.movieDetail.data!.data!.movie!.cast![index].headShotImage!
          //           .url!,
          //     ),
          //   ),
          // ),
          photo,
          const SizedBox(height: 10),
          Text(
            state.movieDetail.data!.data!.movie!.cast![index].characterName ??
                '',
            style: TextStyle(
                color: widget.style.onBackgroundColor,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            state.movieDetail.data!.data!.movie!.cast![index].name ?? '',
            style: TextStyle(color: widget.style.onBackgroundColor),
          ),
        ],
      ),
    );
  }

  Widget _buildInitial() {
    return const Center(
      child: Text('Initial'),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
