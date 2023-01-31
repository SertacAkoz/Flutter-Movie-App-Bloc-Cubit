// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsMovie _$NewsMovieFromJson(Map<String, dynamic> json) => NewsMovie(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NewsMovieToJson(NewsMovie instance) => <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      newsStories: (json['newsStories'] as List<dynamic>?)
          ?.map((e) => New.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'newsStories': instance.newsStories,
    };

New _$NewFromJson(Map<String, dynamic> json) => New(
      id: json['id'] as String?,
      title: json['title'] as String?,
      status: json['status'] as String?,
      link: json['link'] as String?,
      mainImage: json['mainImage'] == null
          ? null
          : MainImage.fromJson(json['mainImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NewToJson(New instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'link': instance.link,
      'mainImage': instance.mainImage,
    };

MainImage _$MainImageFromJson(Map<String, dynamic> json) => MainImage(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$MainImageToJson(MainImage instance) => <String, dynamic>{
      'url': instance.url,
    };
