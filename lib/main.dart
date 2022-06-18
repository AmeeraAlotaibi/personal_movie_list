import 'package:flutter/material.dart';
import 'package:movie_list/pages/home_page.dart';
import 'package:movie_list/models/movies.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list/pages/movie_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: "/movie",
      builder: (context, state) => MovieDetails(
        movies: state.extra as Movie,
      ),
    ),
  ]);
}
