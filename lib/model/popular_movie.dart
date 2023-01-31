// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'popular_movie.g.dart';

@JsonSerializable()
class PopularMovie {
  Data? data;

  PopularMovie({this.data});

  factory PopularMovie.fromJson(Map<String, dynamic> json) =>
      _$PopularMovieFromJson(json);
  Map<String, dynamic> toJson() => _$PopularMovieToJson(this);
}
@JsonSerializable()
class Data {
  List<Popularity>? popularity;
  List<Opening>? opening;

  Data({this.popularity, this.opening});

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Popularity {
  String? emsId;
  String? emsVersionId;
  String? name;
  int? sortEms;
  int? sortPopularity;
  PosterImage? posterImage;
  TomatoRating? tomatoRating;
  UserRating? userRating;

  Popularity(
      {this.emsId,
      this.emsVersionId,
      this.name,
      this.sortEms,
      this.sortPopularity,
      this.posterImage,
      this.tomatoRating,
      this.userRating,});

  factory Popularity.fromJson(Map<String, dynamic> json) =>
      _$PopularityFromJson(json);
  Map<String, dynamic> toJson() => _$PopularityToJson(this);
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

@JsonSerializable()
class TomatoRating {
  int? tomatometer;
  IconImage? iconImage;

  TomatoRating({this.tomatometer, this.iconImage});

  factory TomatoRating.fromJson(Map<String, dynamic> json) =>
      _$TomatoRatingFromJson(json);
  Map<String, dynamic> toJson() => _$TomatoRatingToJson(this);
}

@JsonSerializable()
class IconImage {
  String? url;

  IconImage({this.url});

  factory IconImage.fromJson(Map<String, dynamic> json) =>
      _$IconImageFromJson(json);
  Map<String, dynamic> toJson() => _$IconImageToJson(this);
}

@JsonSerializable()
class Opening {
  String? emsId;
  String? emsVersionId;
  String? name;
  int? sortEms;
  PosterImage? posterImage;
  TomatoRating? tomatoRating;
  UserRating? userRating;

  Opening({
    this.emsId,
    this.emsVersionId,
    this.name,
    this.sortEms,
    this.posterImage,
    this.tomatoRating,
    this.userRating,
  });

  factory Opening.fromJson(Map<String, dynamic> json) =>
      _$OpeningFromJson(json);
  Map<String, dynamic> toJson() => _$OpeningToJson(this);
}

@JsonSerializable()
class UserRating {
  int? dtlLikedScore;
  int? dtlWtsScore;
  int? dtlWtsCount;
  int? dtlScoreCount;
  IconImage? iconImage;

  UserRating({
    this.dtlLikedScore,
    this.dtlWtsScore,
    this.dtlWtsCount,
    this.dtlScoreCount,
    this.iconImage,
  });

  factory UserRating.fromJson(Map<String, dynamic> json) =>
      _$UserRatingFromJson(json);
  Map<String, dynamic> toJson() => _$UserRatingToJson(this);
}
