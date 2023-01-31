import 'package:flutter/cupertino.dart';
import 'package:movie_bloc/bloc/home_cubit/home_style.dart';
import 'package:movie_bloc/bloc/home_cubit/home_view.dart';
import 'package:movie_bloc/bloc/movie_detail/movie_detail_style.dart';
import 'package:movie_bloc/bloc/movie_detail/movie_detail_view.dart';
import 'package:movie_bloc/di/dependency_injection.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(
    Widget gidilecekWidget,
    RouteSettings settings,
  ) {
    return CupertinoPageRoute(
      settings: settings,
      builder: (context) => gidilecekWidget,
    );
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeOlustur(
          HomeView(
            style: getIt.get<HomeStyle>(),
          ),
          settings,
        );
      case '/movieDetail':
        return _routeOlustur(
          MovieDetailView(
            style: getIt.get<MovieDetailStyle>(),
            movieId: settings.arguments as String,
          ),
          settings,
        );
      default:
        return _routeOlustur(
          HomeView(
            style: getIt.get<HomeStyle>(),
          ),
          settings,
        );
    }
  }
}
