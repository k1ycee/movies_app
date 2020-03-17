import 'package:movie_view_model/model/movie_model.dart';

class MovieViewModel{
  final Movies movie;

  MovieViewModel({this.movie});

  String get title{
    return this.movie.title;
  }

  String get poster{
    return this.movie.poster;
  }

  String get type{
    return this.movie.type;
  }

  String get year{
    return this.movie.year;
  }
}