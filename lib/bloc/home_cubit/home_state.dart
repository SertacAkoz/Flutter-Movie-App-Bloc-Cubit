// ignore_for_file: must_be_immutable

part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeCompleted extends HomeState {
  Resource<PopularMovie> popularMovies;
  Resource<UpComingMovie>? upComingMovies;
  Resource<NewsMovie>? newsMovie;
  HomeCompleted({
    required this.popularMovies,
    required this.upComingMovies,
    required this.newsMovie,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is HomeCompleted &&
      other.popularMovies == popularMovies;
  }

  @override
  int get hashCode => popularMovies.hashCode;

  HomeCompleted copyWith({
    Resource<PopularMovie>? popularMovies,
    Resource<UpComingMovie>? upComingMovies,
    Resource<NewsMovie>? newsMovie,
  }) {
    return HomeCompleted(
      popularMovies: popularMovies ?? this.popularMovies,
      upComingMovies: upComingMovies ?? this.upComingMovies,
      newsMovie: newsMovie ?? this.newsMovie,
    );
  }
}

class HomeError extends HomeState {
  String message;
  HomeError({
    required this.message,
  });
}


