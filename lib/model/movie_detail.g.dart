// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) => MovieDetail(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovieDetailToJson(MovieDetail instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      movie: json['movie'] == null
          ? null
          : Movie.fromJson(json['movie'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'movie': instance.movie,
    };

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      emsId: json['emsId'] as String?,
      fandangoId: json['fandangoId'] as String?,
      rtMovieId: json['rtMovieId'] as String?,
      name: json['name'] as String?,
      durationMinutes: json['durationMinutes'] as int?,
      synopsis: json['synopsis'] as String?,
      directedBy: json['directedBy'] as String?,
      releaseDate: json['releaseDate'] as String?,
      showReleaseDate: json['showReleaseDate'] as String?,
      dvdReleaseDate: json['dvdReleaseDate'] as String?,
      availabilityWindow: json['availabilityWindow'] as String?,
      ovdReleaseDate: json['ovdReleaseDate'] as String?,
      totalGross: json['totalGross'] as String?,
      trailer: json['trailer'] == null
          ? null
          : Trailer.fromJson(json['trailer'] as Map<String, dynamic>),
      posterImage: json['posterImage'] == null
          ? null
          : Image.fromJson(json['posterImage'] as Map<String, dynamic>),
      backgroundImage: json['backgroundImage'] == null
          ? null
          : Image.fromJson(json['backgroundImage'] as Map<String, dynamic>),
      userRating: json['userRating'] == null
          ? null
          : UserRating.fromJson(json['userRating'] as Map<String, dynamic>),
      tomatoRating: json['tomatoRating'] == null
          ? null
          : TomatoRating.fromJson(json['tomatoRating'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genres.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
      crew: (json['crew'] as List<dynamic>?)
          ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
          .toList(),
      motionPictureRating: json['motionPictureRating'] == null
          ? null
          : MotionPictureRating.fromJson(
              json['motionPictureRating'] as Map<String, dynamic>),
      ovds: (json['ovds'] as List<dynamic>?)
          ?.map((e) => Ovds.fromJson(e as Map<String, dynamic>))
          .toList(),
      criticReviews: (json['criticReviews'] as List<dynamic>?)
          ?.map((e) => CriticReviews.fromJson(e as Map<String, dynamic>))
          .toList(),
      audienceReviews: json['audienceReviews'] == null
          ? null
          : AudienceReviews.fromJson(
              json['audienceReviews'] as Map<String, dynamic>),
      showtimeGroupings: json['showtimeGroupings'] == null
          ? null
          : ShowtimeGroupings.fromJson(
              json['showtimeGroupings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'emsId': instance.emsId,
      'fandangoId': instance.fandangoId,
      'rtMovieId': instance.rtMovieId,
      'name': instance.name,
      'durationMinutes': instance.durationMinutes,
      'synopsis': instance.synopsis,
      'directedBy': instance.directedBy,
      'releaseDate': instance.releaseDate,
      'showReleaseDate': instance.showReleaseDate,
      'dvdReleaseDate': instance.dvdReleaseDate,
      'availabilityWindow': instance.availabilityWindow,
      'ovdReleaseDate': instance.ovdReleaseDate,
      'totalGross': instance.totalGross,
      'trailer': instance.trailer,
      'posterImage': instance.posterImage,
      'backgroundImage': instance.backgroundImage,
      'userRating': instance.userRating,
      'tomatoRating': instance.tomatoRating,
      'genres': instance.genres,
      'images': instance.images,
      'cast': instance.cast,
      'crew': instance.crew,
      'motionPictureRating': instance.motionPictureRating,
      'ovds': instance.ovds,
      'criticReviews': instance.criticReviews,
      'audienceReviews': instance.audienceReviews,
      'showtimeGroupings': instance.showtimeGroupings,
    };

Trailer _$TrailerFromJson(Map<String, dynamic> json) => Trailer(
      url: json['url'] as String?,
      freewheelId: json['freewheelId'] as String?,
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$TrailerToJson(Trailer instance) => <String, dynamic>{
      'url': instance.url,
      'freewheelId': instance.freewheelId,
      'duration': instance.duration,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      url: json['url'] as String?,
      type: json['type'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'url': instance.url,
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
    };

UserRating _$UserRatingFromJson(Map<String, dynamic> json) => UserRating(
      dtlLikedScore: json['dtlLikedScore'] as int?,
      dtlWtsScore: json['dtlWtsScore'] as int?,
      ratingCount: json['ratingCount'] as int?,
      iconImage: json['iconImage'] == null
          ? null
          : IconImage.fromJson(json['iconImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRatingToJson(UserRating instance) =>
    <String, dynamic>{
      'dtlLikedScore': instance.dtlLikedScore,
      'dtlWtsScore': instance.dtlWtsScore,
      'ratingCount': instance.ratingCount,
      'iconImage': instance.iconImage,
    };

IconImage _$IconImageFromJson(Map<String, dynamic> json) => IconImage(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$IconImageToJson(IconImage instance) => <String, dynamic>{
      'url': instance.url,
    };

TomatoRating _$TomatoRatingFromJson(Map<String, dynamic> json) => TomatoRating(
      tomatometer: json['tomatometer'] as int?,
      ratingCount: json['ratingCount'] as int?,
      consensus: json['consensus'] as String?,
      iconImage: json['iconImage'] == null
          ? null
          : IconImage.fromJson(json['iconImage'] as Map<String, dynamic>),
      largeIconImage: json['largeIconImage'] == null
          ? null
          : IconImage.fromJson(json['largeIconImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TomatoRatingToJson(TomatoRating instance) =>
    <String, dynamic>{
      'tomatometer': instance.tomatometer,
      'ratingCount': instance.ratingCount,
      'consensus': instance.consensus,
      'iconImage': instance.iconImage,
      'largeIconImage': instance.largeIconImage,
    };

Genres _$GenresFromJson(Map<String, dynamic> json) => Genres(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GenresToJson(Genres instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Cast _$CastFromJson(Map<String, dynamic> json) => Cast(
      id: json['id'] as int?,
      role: json['role'] as String?,
      name: json['name'] as String?,
      characterName: json['characterName'] as String?,
      headShotImage: json['headShotImage'] == null
          ? null
          : Image.fromJson(json['headShotImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CastToJson(Cast instance) => <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'name': instance.name,
      'characterName': instance.characterName,
      'headShotImage': instance.headShotImage,
    };

Crew _$CrewFromJson(Map<String, dynamic> json) => Crew(
      id: json['id'] as int?,
      role: json['role'] as String?,
      name: json['name'] as String?,
      headShotImage: json['headShotImage'] as String?,
    );

Map<String, dynamic> _$CrewToJson(Crew instance) => <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'name': instance.name,
      'headShotImage': instance.headShotImage,
    };

MotionPictureRating _$MotionPictureRatingFromJson(Map<String, dynamic> json) =>
    MotionPictureRating(
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MotionPictureRatingToJson(
        MotionPictureRating instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
    };

Ovds _$OvdsFromJson(Map<String, dynamic> json) => Ovds(
      videoId: json['videoId'] as String?,
      url: json['url'] as String?,
      lastSeen: json['lastSeen'] as String?,
      host: json['host'] == null
          ? null
          : Host.fromJson(json['host'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OvdsToJson(Ovds instance) => <String, dynamic>{
      'videoId': instance.videoId,
      'url': instance.url,
      'lastSeen': instance.lastSeen,
      'host': instance.host,
    };

Host _$HostFromJson(Map<String, dynamic> json) => Host(
      hostId: json['hostId'] as String?,
      name: json['name'] as String?,
      alphaLight: json['alphaLight'] as String?,
      alphaDark: json['alphaDark'] as String?,
      solidLight: json['solidLight'] as String?,
      solidDark: json['solidDark'] as String?,
    );

Map<String, dynamic> _$HostToJson(Host instance) => <String, dynamic>{
      'hostId': instance.hostId,
      'name': instance.name,
      'alphaLight': instance.alphaLight,
      'alphaDark': instance.alphaDark,
      'solidLight': instance.solidLight,
      'solidDark': instance.solidDark,
    };

CriticReviews _$CriticReviewsFromJson(Map<String, dynamic> json) =>
    CriticReviews(
      iconImage: json['iconImage'] == null
          ? null
          : IconImage.fromJson(json['iconImage'] as Map<String, dynamic>),
      criticName: json['criticName'] as String?,
      publicationName: json['publicationName'] as String?,
      body: json['body'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$CriticReviewsToJson(CriticReviews instance) =>
    <String, dynamic>{
      'iconImage': instance.iconImage,
      'criticName': instance.criticName,
      'publicationName': instance.publicationName,
      'body': instance.body,
      'url': instance.url,
    };

AudienceReviews _$AudienceReviewsFromJson(Map<String, dynamic> json) =>
    AudienceReviews(
      totalCount: json['totalCount'] as int?,
      nextOffset: json['nextOffset'] as int?,
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AudienceReviewsToJson(AudienceReviews instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'nextOffset': instance.nextOffset,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'items': instance.items,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      userFullName: json['userFullName'] as String?,
      userImage: json['userImage'] as String?,
      iconImage: json['iconImage'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      isInterested: json['isInterested'] as bool?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'userFullName': instance.userFullName,
      'userImage': instance.userImage,
      'iconImage': instance.iconImage,
      'rating': instance.rating,
      'isInterested': instance.isInterested,
      'comment': instance.comment,
    };

ShowtimeGroupings _$ShowtimeGroupingsFromJson(Map<String, dynamic> json) =>
    ShowtimeGroupings(
      fandangoId: json['fandangoId'] as String?,
      movieId: json['movieId'] as String?,
      displayDates: (json['displayDates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      displayDate: json['displayDate'] as String?,
      mppBaseUrl: json['mppBaseUrl'] as String?,
      theaters: (json['theaters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ShowtimeGroupingsToJson(ShowtimeGroupings instance) =>
    <String, dynamic>{
      'fandangoId': instance.fandangoId,
      'movieId': instance.movieId,
      'displayDates': instance.displayDates,
      'displayDate': instance.displayDate,
      'mppBaseUrl': instance.mppBaseUrl,
      'theaters': instance.theaters,
    };
