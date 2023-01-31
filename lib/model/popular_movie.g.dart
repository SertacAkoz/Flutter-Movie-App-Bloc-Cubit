// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularMovie _$PopularMovieFromJson(Map<String, dynamic> json) => PopularMovie(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PopularMovieToJson(PopularMovie instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      popularity: (json['popularity'] as List<dynamic>?)
          ?.map((e) => Popularity.fromJson(e as Map<String, dynamic>))
          .toList(),
      opening: (json['opening'] as List<dynamic>?)
          ?.map((e) => Opening.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'popularity': instance.popularity,
      'opening': instance.opening,
    };

Popularity _$PopularityFromJson(Map<String, dynamic> json) => Popularity(
      emsId: json['emsId'] as String?,
      emsVersionId: json['emsVersionId'] as String?,
      name: json['name'] as String?,
      sortEms: json['sortEms'] as int?,
      sortPopularity: json['sortPopularity'] as int?,
      posterImage: json['posterImage'] == null
          ? null
          : PosterImage.fromJson(json['posterImage'] as Map<String, dynamic>),
      tomatoRating: json['tomatoRating'] == null
          ? null
          : TomatoRating.fromJson(json['tomatoRating'] as Map<String, dynamic>),
      userRating: json['userRating'] == null
          ? null
          : UserRating.fromJson(json['userRating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PopularityToJson(Popularity instance) =>
    <String, dynamic>{
      'emsId': instance.emsId,
      'emsVersionId': instance.emsVersionId,
      'name': instance.name,
      'sortEms': instance.sortEms,
      'sortPopularity': instance.sortPopularity,
      'posterImage': instance.posterImage,
      'tomatoRating': instance.tomatoRating,
      'userRating': instance.userRating,
    };

PosterImage _$PosterImageFromJson(Map<String, dynamic> json) => PosterImage(
      url: json['url'] as String?,
      type: json['type'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$PosterImageToJson(PosterImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
    };

TomatoRating _$TomatoRatingFromJson(Map<String, dynamic> json) => TomatoRating(
      tomatometer: json['tomatometer'] as int?,
      iconImage: json['iconImage'] == null
          ? null
          : IconImage.fromJson(json['iconImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TomatoRatingToJson(TomatoRating instance) =>
    <String, dynamic>{
      'tomatometer': instance.tomatometer,
      'iconImage': instance.iconImage,
    };

IconImage _$IconImageFromJson(Map<String, dynamic> json) => IconImage(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$IconImageToJson(IconImage instance) => <String, dynamic>{
      'url': instance.url,
    };

Opening _$OpeningFromJson(Map<String, dynamic> json) => Opening(
      emsId: json['emsId'] as String?,
      emsVersionId: json['emsVersionId'] as String?,
      name: json['name'] as String?,
      sortEms: json['sortEms'] as int?,
      posterImage: json['posterImage'] == null
          ? null
          : PosterImage.fromJson(json['posterImage'] as Map<String, dynamic>),
      tomatoRating: json['tomatoRating'] == null
          ? null
          : TomatoRating.fromJson(json['tomatoRating'] as Map<String, dynamic>),
      userRating: json['userRating'] == null
          ? null
          : UserRating.fromJson(json['userRating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OpeningToJson(Opening instance) => <String, dynamic>{
      'emsId': instance.emsId,
      'emsVersionId': instance.emsVersionId,
      'name': instance.name,
      'sortEms': instance.sortEms,
      'posterImage': instance.posterImage,
      'tomatoRating': instance.tomatoRating,
      'userRating': instance.userRating,
    };

UserRating _$UserRatingFromJson(Map<String, dynamic> json) => UserRating(
      dtlLikedScore: json['dtlLikedScore'] as int?,
      dtlWtsScore: json['dtlWtsScore'] as int?,
      dtlWtsCount: json['dtlWtsCount'] as int?,
      dtlScoreCount: json['dtlScoreCount'] as int?,
      iconImage: json['iconImage'] == null
          ? null
          : IconImage.fromJson(json['iconImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRatingToJson(UserRating instance) =>
    <String, dynamic>{
      'dtlLikedScore': instance.dtlLikedScore,
      'dtlWtsScore': instance.dtlWtsScore,
      'dtlWtsCount': instance.dtlWtsCount,
      'dtlScoreCount': instance.dtlScoreCount,
      'iconImage': instance.iconImage,
    };
