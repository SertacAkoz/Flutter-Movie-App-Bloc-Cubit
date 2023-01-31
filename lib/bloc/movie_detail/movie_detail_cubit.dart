// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:movie_bloc/bloc/movie_detail/movie_detail_repo.dart';
import 'package:movie_bloc/model/movie_detail.dart';
import 'package:movie_bloc/util/resource.dart';

part 'movie_detail_state.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  MovieDetailCubit() : super(MovieDetailInitial());
  final _repo = MovieDetailRepository();

  Future<void> getMovieDetail(String movieId) async{
    // await Future.delayed(const Duration(seconds: 1));
    emit(MovieDetailLoading());
    debugPrint('Triggered');
    final response = await _repo.getMovieDetail(movieId);
    if (response.status == Status.SUCCESS) {
      emit(MovieDetailCompleted(movieDetail: response));  
    }else {
      emit(MovieDetailError(error: response.message ?? 'Bir sorun oluştu'));
    }
    
  }
}
