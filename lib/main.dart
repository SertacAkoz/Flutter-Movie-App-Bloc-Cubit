import 'package:flutter/material.dart';
import 'package:movie_bloc/bloc/home_cubit/home_style.dart';
import 'package:movie_bloc/bloc/home_cubit/home_view.dart';
import 'package:movie_bloc/di/dependency_injection.dart';
import 'package:movie_bloc/route/route_generator.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  setupStyles();
  runApp(const MyApp());
}

// void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.routeGenerator,
        theme: ThemeData(canvasColor: Colors.transparent),
        title: 'Material App',
        home: HomeView(
          style: getIt.get<HomeStyle>(),
        ),
      ),
    );
  }
}
