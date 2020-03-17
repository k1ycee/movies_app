import 'package:flutter/material.dart';
import 'package:movie_view_model/services/movies_api_provider.dart';
import 'package:movie_view_model/view_models/movie_view_model.dart';

class MovieListViewModel extends ChangeNotifier{
  List<MovieViewModel> movies = List<MovieViewModel>();

  Future<void> fetchMovies(String keyword)async{
    final result = await ServedMovie().getMovies(keyword);
    this.movies = result.map((item) => MovieViewModel(movie: item)).toList();
    print(this.movies);
    notifyListeners();
  }
}