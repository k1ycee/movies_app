import 'package:flutter/material.dart';
import 'package:movie_view_model/UI/movie_list_page.dart';
import 'package:movie_view_model/view_models/movie_list_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies',
      home: ChangeNotifierProvider(
        create: (context) => MovieListViewModel(),
        child: MoviesPage(),
        ),
    );
  }
}
