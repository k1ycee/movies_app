


import 'package:flutter/material.dart';
import 'package:movie_view_model/view_models/movie_view_model.dart';

class Movies extends StatelessWidget {


  final List<MovieViewModel> movies;

  Movies({this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.movies.length,
      itemBuilder: (context, index){
          final movie = this.movies[index];
          return ListTile(
             leading: 
            //  CircleAvatar(child:Image.network(movie.poster)),
            Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(movie.poster)
              ),
              borderRadius: BorderRadius.circular(6)
            ),
            width: 50, 
            height: 100,
            ),
            title: Text(movie.title),
            subtitle: Text(movie.type),
            trailing: Text(movie.year),
        );
      }
    );
  }
}