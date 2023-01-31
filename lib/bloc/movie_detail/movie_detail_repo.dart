import 'package:movie_bloc/di/dependency_injection.dart';
import 'package:movie_bloc/model/movie_detail.dart';
import 'package:movie_bloc/network/api.dart';
import 'package:movie_bloc/util/resource.dart';

abstract class IMovieDetailRepository {
  Future<Resource<MovieDetail>> getMovieDetail(String movieId);
}

class MovieDetailRepository implements IMovieDetailRepository {
  final _api = getIt.get<RestClient>();
  @override
  Future<Resource<MovieDetail>> getMovieDetail(String movieId) async {
    try {
      final response = await _api.getMovieDetail(movieId);
      return Resource.success(response.data);
    } catch (e) {
      return Resource.error(e.toString());
    }
  }
}
