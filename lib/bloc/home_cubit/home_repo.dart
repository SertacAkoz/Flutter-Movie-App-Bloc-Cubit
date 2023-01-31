import 'package:movie_bloc/di/dependency_injection.dart';
import 'package:movie_bloc/model/news_movie.dart';
import 'package:movie_bloc/model/popular_movie.dart';
import 'package:movie_bloc/model/up_coming_movie.dart';
import 'package:movie_bloc/network/api.dart';
import 'package:movie_bloc/util/resource.dart';

abstract class IHomeRepository {
  Future<Resource<PopularMovie>> getPopularMovies();
  Future<Resource<UpComingMovie>> getUpComingMovies();
  Future<Resource<NewsMovie>> getNews();
}

class HomeRepository implements IHomeRepository {
  final _api = getIt.get<RestClient>();

  @override
  Future<Resource<PopularMovie>> getPopularMovies() async {
    try {
      final response = await _api.getPopularMovies();
      return Resource.success(response.data);
    } catch (e) {
      return Resource.error(e.toString());
    }
  }

  @override
  Future<Resource<UpComingMovie>> getUpComingMovies() async {
    try {
      final response = await _api.getUpComingMovies();
      return Resource.success(response.data);
    } catch (e) {
      return Resource.error(e.toString());
    }
  }

  @override
  Future<Resource<NewsMovie>> getNews() async {
    try {
      final response = await _api.getNews();
      return Resource.success(response.data);
    } catch (e) {
      return Resource.error(e.toString());
    }
  }
}
