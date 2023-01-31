// ignore_for_file: must_be_immutable

part of 'movie_detail_cubit.dart';

@immutable
abstract class MovieDetailState {}

class MovieDetailInitial extends MovieDetailState {}

class MovieDetailLoading extends MovieDetailState {}

class MovieDetailCompleted extends MovieDetailState {
  Resource<MovieDetail> movieDetail;
  MovieDetailCompleted({
    required this.movieDetail,
  });

  String getMovieTypesAsString() {
    final data = movieDetail.data!.data!.movie!.genres!;
    String result = '';

    for (var i = 0; i < data.length; i++) {
      
      if(data.length - 1 == i){
        result += data[i].name!;
      }else {
        result += '${data[i].name!} ,';
      }
    }

    return result;
  }

  MovieDetailCompleted copyWith({
    Resource<MovieDetail>? movieDetail,
  }) {
    return MovieDetailCompleted(
      movieDetail: movieDetail ?? this.movieDetail,
    );
  }
}

class MovieDetailError extends MovieDetailState {
  String error;
  MovieDetailError({
    required this.error,
  });
}
