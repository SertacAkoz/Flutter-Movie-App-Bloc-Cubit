// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:movie_bloc/bloc/home_cubit/home_repo.dart';
import 'package:movie_bloc/model/news_movie.dart';
import 'package:movie_bloc/model/popular_movie.dart';
import 'package:movie_bloc/model/up_coming_movie.dart';
import 'package:movie_bloc/util/resource.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final HomeRepository _repo = HomeRepository();

  // Future<void> getPopularMovies() async {
  //   emit(HomeLoading());
  //   final popularMoviesResponse = await _repo.getPopularMovies();
  //   debugPrint('Home Cubit Popular Movies');
  //   debugPrint(popularMoviesResponse.data?.data?.popularity?[0].name);
  //   if (popularMoviesResponse.status == Status.SUCCESS) {
  //     emit(HomeCompleted(popularMovies: popularMoviesResponse));
  //   } else {
  //     emit(HomeError(
  //         message: popularMoviesResponse.message ?? 'Bir sorun oluştu!'));
  //   }
  // }

  Future<void> getAllNecessarries() async {
    emit(HomeLoading());
    List<Resource> listResource = [];
    final popularMovies = await _repo.getPopularMovies();
    debugPrint('DENEME');
    debugPrint('Status : ${popularMovies.status}');
    debugPrint('Message : ${popularMovies.message}');
    debugPrint('Data : ${popularMovies.data?.data?.popularity?[0].emsId}');
    listResource.add(popularMovies);
    final upComingMovies = await _repo.getUpComingMovies();
    listResource.add(upComingMovies);
    final newsMovie = await _repo.getNews();
    listResource.add(newsMovie);
    final error = _getErrorMessage(listResource);
    if (error == null) {
      emit(
        HomeCompleted(
          popularMovies: popularMovies,
          upComingMovies: upComingMovies,
          newsMovie: newsMovie,
        ),
      );
    } else {
      debugPrint('Home Cubit Error : ');
      debugPrint(error);
      emit(HomeError(message: error));
    }
  }

  String? _getErrorMessage(List<Resource> data) {
    String? result;
    for (var i = 0; i < data.length; i++) {
      if (data[i].status == Status.ERROR) {
        result = data[i].message;
      }
    }
    return result;
  }
}
