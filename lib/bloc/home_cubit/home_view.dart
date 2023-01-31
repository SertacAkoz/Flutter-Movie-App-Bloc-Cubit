// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movie_bloc/bloc/home_cubit/home_cubit.dart';
import 'package:movie_bloc/bloc/home_cubit/home_style.dart';
import 'package:movie_bloc/util/utils.dart';

class HomeView extends StatefulWidget {
  HomeStyle style;
  HomeView({
    Key? key,
    required this.style,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // late final List<Widget> _pages = [
  //   _sohbetlerPage(),
  //   _gruplarPage(),
  //   _arkadaslarPage()
  // ];

  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: buildScaffold(),
    );
  }

  Scaffold buildScaffold() {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: widget.style.backgroundColor,
      // appBar: AppBar(
      //   title: const Text('Home Page'),
      // ),
      // bottomNavigationBar: _buttomNavigation(),
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is HomeError) {
            Scaffold.of(context)
                .showBottomSheet((context) => Text(state.message));
          }
        },
        builder: (context, state) {
          if (state is HomeInitial) {
            BlocProvider.of<HomeCubit>(context).getAllNecessarries();
            // return buildInitial();
            return buildLoading();
          } else if (state is HomeLoading) {
            return buildLoading();
          } else if (state is HomeCompleted) {
            return buildCompleted(state, context);
          } else {
            final error = state as HomeError;
            return buildError(error);
          }
        },
      ),
    );
  }

  Center buildError(HomeError error) {
    return Center(
      child: Text(error.message),
    );
  }

  SafeArea buildCompleted(HomeCompleted state, BuildContext context) {
    if (_selectedPage == 0) {
      return _mainView(state, context);
    } else if (_selectedPage == 1) {
      return _searchView(context);
    } else {
      return _mainView(state, context);
    }
  }

  SafeArea _searchView(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: widget.style.getheight(context),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(width: 20),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'İsme göre film ara',
                                filled: true,
                                fillColor: widget.style.onBackgroundColor,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: widget.style.theme600,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.search,
                            color: widget.style.onBackgroundColor,
                            // size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                  // SizedBox(height: 500,)
                ],
              ),
            ),
          ),
          _buttomNavigation(),
        ],
      ),
    );
  }

  SafeArea _mainView(HomeCompleted state, BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                buildPopularSection(state),
                buildUpComingSection(state),
                buildNewsSection(state, context),
              ],
            ),
          ),
          _buttomNavigation(),
        ],
      ),
    );
  }

  Column buildPopularSection(HomeCompleted state) {
    int listLenght;
    debugPrint(
        'Home Null : ${state.popularMovies.data!.data!.popularity?[0].emsId}');
    if (state.popularMovies.data!.data!.popularity!.length >= 10) {
      listLenght = 10;
    } else {
      listLenght = state.popularMovies.data!.data!.popularity!.length;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popüler Filmler',
                style: widget.style.getTitleTextStyle(),
              ),
              Text(
                'Tümünü Gör',
                style: widget.style.getSubTitleTextStyle(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: listLenght,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return popularMoviesListRow(state, index, context);
            },
          ),
        ),
      ],
    );
  }

  Column buildUpComingSection(HomeCompleted state) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Yakında...',
                style: widget.style.getTitleTextStyle(),
              ),
              Text(
                'Tümünü Gör',
                style: widget.style.getSubTitleTextStyle(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: state.upComingMovies?.data?.data?.upcoming?.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return upComingMoviesListRow(state, index);
            },
          ),
        ),
      ],
    );
  }

  Column buildNewsSection(HomeCompleted state, BuildContext context) {
    int listLength;
    if (state.newsMovie!.data!.data!.newsStories!.length >= 20) {
      listLength = 20;
    } else {
      listLength = state.newsMovie!.data!.data!.newsStories!.length;
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Haberler',
                style: widget.style.getTitleTextStyle(),
              ),
              Text(
                'Tümünü Gör',
                style: widget.style.getSubTitleTextStyle(),
              ),
            ],
          ),
        ),

        ListView.builder(
          itemCount: listLength,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return buildNewsListRow(context, state, index);
          },
        ),
        // buildNewsListRow(context, state),
        // buildNewsListRow(context, state),
      ],
    );
  }

  Padding buildNewsListRow(
      BuildContext context, HomeCompleted state, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  width: widget.style.getWidth(context),
                  height: 216,
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    state.newsMovie!.data!.data!.newsStories![index].mainImage!
                        .url!,
                  ),
                ),
              ),
              Container(
                width: widget.style.getWidth(context),
                height: 216,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      state.newsMovie!.data!.data!.newsStories![index].title!,
                      textAlign: TextAlign.center,
                      style: widget.style.getNewsTitleTextStyle(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget popularMoviesListRow(
      HomeCompleted state, int index, BuildContext context) {
    return InkWell(
      onTap: () {
        Utils.safeNavigate('/movieDetail', context,
            state.popularMovies.data!.data!.popularity![index].emsVersionId);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 5),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  width: 200,
                  height: 300,
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    state.popularMovies.data!.data!.popularity![index]
                        .posterImage!.url!,
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      state.popularMovies.data!.data!.popularity![index].name
                          .toString(),
                      textAlign: TextAlign.center,
                      style: widget.style.getContentTitleTextStyle(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }

  InkWell upComingMoviesListRow(HomeCompleted state, int index) {
    return InkWell(
      onTap: () {
        Utils.safeNavigate('/movieDetail', context,
            state.upComingMovies!.data!.data!.upcoming![index].emsVersionId);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 5),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  width: 200,
                  height: 300,
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    state.upComingMovies!.data!.data!.upcoming![index]
                        .posterImage!.url!,
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          state.upComingMovies!.data!.data!.upcoming![index].name
                              .toString(),
                          textAlign: TextAlign.center,
                          style: widget.style.getContentTitleTextStyle(),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          state.upComingMovies!.data!.data!.upcoming![index]
                              .releaseDate
                              .toString(),
                          textAlign: TextAlign.center,
                          style: widget.style.getUpComingDateTextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }

  Center buildLoading() {
    debugPrint('Home View Loading');
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Center buildInitial() {
    debugPrint('Home View Initial');
    return const Center(
      child: Text('Initial'),
    );
  }

  Widget _buttomNavigation() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(0.7),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
          // backgroundColor: Colors.amber,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          currentIndex: _selectedPage,
          onTap: (value) {
            setState(() {
              _selectedPage = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Ara'),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.person_add), label: 'Arkadaş Ekle'),
          ],
        ),
      ),
    );
  }
}
