// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'movie_detail.g.dart';

@JsonSerializable()
class MovieDetail {
  Data? data;

  MovieDetail({this.data});

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);
}

@JsonSerializable()
class Data {
  Movie? movie;
  
  Data({
    this.movie,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Movie {
  String? emsId;
  String? fandangoId;
  String? rtMovieId;
  String? name;
  int? durationMinutes;
  String? synopsis;
  String? directedBy;
  String? releaseDate;
  String? showReleaseDate;
  String? dvdReleaseDate;
  String? availabilityWindow;
  String? ovdReleaseDate;
  String? totalGross;
  Trailer? trailer;
  Image? posterImage;
  Image? backgroundImage;
  UserRating? userRating;
  TomatoRating? tomatoRating;
  List<Genres>? genres;
  List<Image>? images;
  List<Cast>? cast;
  List<Crew>? crew;
  MotionPictureRating? motionPictureRating;
  List<Ovds>? ovds;
  List<CriticReviews>? criticReviews;
  AudienceReviews? audienceReviews;
  ShowtimeGroupings? showtimeGroupings;

  Movie({
    this.emsId,
    this.fandangoId,
    this.rtMovieId,
    this.name,
    this.durationMinutes,
    this.synopsis,
    this.directedBy,
    this.releaseDate,
    this.showReleaseDate,
    this.dvdReleaseDate,
    this.availabilityWindow,
    this.ovdReleaseDate,
    this.totalGross,
    this.trailer,
    this.posterImage,
    this.backgroundImage,
    this.userRating,
    this.tomatoRating,
    this.genres,
    this.images,
    this.cast,
    this.crew,
    this.motionPictureRating,
    this.ovds,
    this.criticReviews,
    this.audienceReviews,
    this.showtimeGroupings,
  });

  factory Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieFromJson(json);
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}

@JsonSerializable()
class Trailer {
  String? url;
  String? freewheelId;
  String? duration;

  Trailer({this.url, this.freewheelId, this.duration});

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
  Map<String, dynamic> toJson() => _$TrailerToJson(this);
}

@JsonSerializable()
class Image {
  String? url;
  String? type;
  int? width;
  int? height;

  Image({this.url, this.type, this.width, this.height});

  factory Image.fromJson(Map<String, dynamic> json) =>
      _$ImageFromJson(json);
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class UserRating {
  int? dtlLikedScore;
  int? dtlWtsScore;
  int? ratingCount;
  IconImage? iconImage;

  UserRating({
    this.dtlLikedScore,
    this.dtlWtsScore,
    this.ratingCount,
    this.iconImage,
  });

  factory UserRating.fromJson(Map<String, dynamic> json) =>
      _$UserRatingFromJson(json);
  Map<String, dynamic> toJson() => _$UserRatingToJson(this);
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
class TomatoRating {
  int? tomatometer;
  int? ratingCount;
  String? consensus;
  IconImage? iconImage;
  IconImage? largeIconImage;

  TomatoRating({
    this.tomatometer,
    this.ratingCount,
    this.consensus,
    this.iconImage,
    this.largeIconImage,
  });

  factory TomatoRating.fromJson(Map<String, dynamic> json) =>
      _$TomatoRatingFromJson(json);
  Map<String, dynamic> toJson() => _$TomatoRatingToJson(this);
}

@JsonSerializable()
class Genres {
  int? id;
  String? name;

  Genres({this.id, this.name});

  factory Genres.fromJson(Map<String, dynamic> json) =>
      _$GenresFromJson(json);
  Map<String, dynamic> toJson() => _$GenresToJson(this);
}

@JsonSerializable()
class Cast {
  int? id;
  String? role;
  String? name;
  String? characterName;
  Image? headShotImage;

  Cast({this.id, this.role, this.name, this.characterName, this.headShotImage});

  factory Cast.fromJson(Map<String, dynamic> json) =>
      _$CastFromJson(json);
  Map<String, dynamic> toJson() => _$CastToJson(this);
}

@JsonSerializable()
class Crew {
  int? id;
  String? role;
  String? name;
  String? headShotImage;

  Crew({this.id, this.role, this.name, this.headShotImage});

  factory Crew.fromJson(Map<String, dynamic> json) =>
      _$CrewFromJson(json);
  Map<String, dynamic> toJson() => _$CrewToJson(this);
}

@JsonSerializable()
class MotionPictureRating {
  String? code;
  String? description;

  MotionPictureRating({this.code, this.description});

  factory MotionPictureRating.fromJson(Map<String, dynamic> json) =>
      _$MotionPictureRatingFromJson(json);
  Map<String, dynamic> toJson() => _$MotionPictureRatingToJson(this);
}

@JsonSerializable()
class Ovds {
  String? videoId;
  String? url;
  String? lastSeen;
  Host? host;

  Ovds({this.videoId, this.url, this.lastSeen, this.host});

  factory Ovds.fromJson(Map<String, dynamic> json) =>
      _$OvdsFromJson(json);
  Map<String, dynamic> toJson() => _$OvdsToJson(this);
}

@JsonSerializable()
class Host {
  String? hostId;
  String? name;
  String? alphaLight;
  String? alphaDark;
  String? solidLight;
  String? solidDark;

  Host({
    this.hostId,
    this.name,
    this.alphaLight,
    this.alphaDark,
    this.solidLight,
    this.solidDark,
  });

  factory Host.fromJson(Map<String, dynamic> json) =>
      _$HostFromJson(json);
  Map<String, dynamic> toJson() => _$HostToJson(this);
}

@JsonSerializable()
class CriticReviews {
  IconImage? iconImage;
  String? criticName;
  String? publicationName;
  String? body;
  String? url;

  CriticReviews({
    this.iconImage,
    this.criticName,
    this.publicationName,
    this.body,
    this.url,
  });

  factory CriticReviews.fromJson(Map<String, dynamic> json) =>
      _$CriticReviewsFromJson(json);
  Map<String, dynamic> toJson() => _$CriticReviewsToJson(this);
}

@JsonSerializable()
class AudienceReviews {
  int? totalCount;
  int? nextOffset;
  bool? hasNextPage;
  bool? hasPreviousPage;
  List<Items>? items;

  AudienceReviews(
      {this.totalCount,
      this.nextOffset,
      this.hasNextPage,
      this.hasPreviousPage,
      this.items});

      factory AudienceReviews.fromJson(Map<String, dynamic> json) =>
      _$AudienceReviewsFromJson(json);
  Map<String, dynamic> toJson() => _$AudienceReviewsToJson(this);
}

@JsonSerializable()
class Items {
  String? userFullName;
  String? userImage;
  String? iconImage;
  double? rating;
  bool? isInterested;
  String? comment;

  Items(
      {this.userFullName,
      this.userImage,
      this.iconImage,
      this.rating,
      this.isInterested,
      this.comment});

      factory Items.fromJson(Map<String, dynamic> json) =>
      _$ItemsFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}

@JsonSerializable()
class ShowtimeGroupings {
  String? fandangoId;
  String? movieId;
  List<String>? displayDates;
  String? displayDate;
  String? mppBaseUrl;
  List<String>? theaters;

  ShowtimeGroupings({
    this.fandangoId,
    this.movieId,
    this.displayDates,
    this.displayDate,
    this.mppBaseUrl,
    this.theaters,
  });

  factory ShowtimeGroupings.fromJson(Map<String, dynamic> json) =>
      _$ShowtimeGroupingsFromJson(json);
  Map<String, dynamic> toJson() => _$ShowtimeGroupingsToJson(this);
}
