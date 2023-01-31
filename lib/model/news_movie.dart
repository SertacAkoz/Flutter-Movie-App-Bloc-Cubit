// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'news_movie.g.dart';

@JsonSerializable()
class NewsMovie {
  Data? data;

  NewsMovie({this.data});

  factory NewsMovie.fromJson(Map<String, dynamic> json) =>
      _$NewsMovieFromJson(json);
  Map<String, dynamic> toJson() => _$NewsMovieToJson(this);
}

@JsonSerializable()
class Data {
  List<New>? newsStories;


  Data({this.newsStories});

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class New {
  String? id;
  String? title;
  String? status;
  String? link;
  MainImage? mainImage;
  New({
    this.id,
    this.title,
    this.status,
    this.link,
    this.mainImage,
  });


  factory New.fromJson(Map<String, dynamic> json) =>
      _$NewFromJson(json);
  Map<String, dynamic> toJson() => _$NewToJson(this);
}

@JsonSerializable()
class MainImage {
  String? url;
  MainImage({
    this.url,
  });


  factory MainImage.fromJson(Map<String, dynamic> json) =>
      _$MainImageFromJson(json);
  Map<String, dynamic> toJson() => _$MainImageToJson(this);
}

