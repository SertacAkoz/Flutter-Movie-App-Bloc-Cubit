// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'up_coming_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpComingMovie _$UpComingMovieFromJson(Map<String, dynamic> json) =>
    UpComingMovie(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpComingMovieToJson(UpComingMovie instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      upcoming: (json['upcoming'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'upcoming': instance.upcoming,
    };

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      emsId: json['emsId'] as String?,
      emsVersionId: json['emsVersionId'] as String?,
      releaseDate: json['releaseDate'] as String?,
      name: json['name'] as String?,
      posterImage: json['posterImage'] == null
          ? null
          : PosterImage.fromJson(json['posterImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'emsId': instance.emsId,
      'emsVersionId': instance.emsVersionId,
      'releaseDate': instance.releaseDate,
      'name': instance.name,
      'posterImage': instance.posterImage,
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
