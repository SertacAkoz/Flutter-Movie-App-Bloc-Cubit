import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_bloc/bloc/home_cubit/home_style.dart';
import 'package:movie_bloc/bloc/movie_detail/movie_detail_style.dart';
import 'package:movie_bloc/network/api.dart';
final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<RestClient>(
    RestClient(
      Dio(
        BaseOptions(
          headers: {
            'X-RapidAPI-Key':
                'f6e7f34bc9msh81710a5ac1cf8d8p175d90jsnf33c55b7c642',
            'X-RapidAPI-Host': 'flixster.p.rapidapi.com',
          },
        ),
      ),
    ),
  );
  // getIt.registerSingleton<LocalStorage>(HiveDB());
  // getIt.registerSingleton<Helpers>(Helpers());
  // getIt.registerSingleton<MicroClient>(MicroClient(Dio()));
}

void setupStyles() {
  getIt.registerSingleton<HomeStyle>(HomeStyle());
  getIt.registerSingleton<MovieDetailStyle>(MovieDetailStyle());
}