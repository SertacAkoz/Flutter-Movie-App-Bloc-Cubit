// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'up_coming_movie.g.dart';

@JsonSerializable()
class UpComingMovie {
  Data? data;

  UpComingMovie({this.data});

  factory UpComingMovie.fromJson(Map<String, dynamic> json) =>
      _$UpComingMovieFromJson(json);
  Map<String, dynamic> toJson() => _$UpComingMovieToJson(this);
}

@JsonSerializable()
class Data {
  List<Movie>? upcoming;


  Data({this.upcoming});

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Movie {
  String? emsId;
  String? emsVersionId;
  String? releaseDate;
  String? name;
  PosterImage? posterImage;

  Movie({
    this.emsId,
    this.emsVersionId,
    this.releaseDate,
    this.name,
    this.posterImage,
  });


  factory Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieFromJson(json);
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}

@JsonSerializable()
class PosterImage {
  String? url;
  String? type;
  int? width;
  int? height;

  PosterImage({this.url, this.type, this.width, this.height});

  factory PosterImage.fromJson(Map<String, dynamic> json) =>
      _$PosterImageFromJson(json);
  Map<String, dynamic> toJson() => _$PosterImageToJson(this);
}

