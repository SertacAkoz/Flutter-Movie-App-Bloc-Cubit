// ignore_for_file: depend_on_referenced_packages, unused_import
import 'package:json_annotation/json_annotation.dart';
import 'package:movie_bloc/model/movie_detail.dart';
import 'package:movie_bloc/model/news_movie.dart';
import 'package:movie_bloc/model/up_coming_movie.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'package:movie_bloc/model/popular_movie.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://flixster.p.rapidapi.com")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/movies/get-popularity")
  Future<HttpResponse<PopularMovie>> getPopularMovies();

  @GET("/movies/get-upcoming")
  Future<HttpResponse<UpComingMovie>> getUpComingMovies();

  @GET("/news/list")
  Future<HttpResponse<NewsMovie>> getNews();

  @GET("/movies/detail")
  Future<HttpResponse<MovieDetail>> getMovieDetail(@Query("emsVersionId") String movieId);
}