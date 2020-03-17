import 'dart:convert';

import 'package:movie_view_model/model/movie_model.dart';
import 'package:http/http.dart'as http;

class ServedMovie{
  Future<List<Movies>> getMovies(String keyword)async{
    final key = 'bf4e7d29';
    final url = 'http://www.omdbapi.com/?s=$keyword&apikey=$key';

    final call = await http.get(url);
    if(call.statusCode == 200){
      final pack = jsonDecode(call.body);
      final Iterable json = pack["Search"];
      return json.map((movee) => Movies.fromJson(movee)).toList();
    }
    else{
      throw Exception('This Completely not right');
    }
  }
}