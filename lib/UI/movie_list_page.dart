import 'package:flutter/material.dart';
import 'package:movie_view_model/UI/movie_list.dart';
import 'package:provider/provider.dart';
import 'package:movie_view_model/view_models/movie_list_view_model.dart';


class MoviesPage extends StatefulWidget {
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {

  final TextEditingController _controller = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   // you can uncomment this to get all batman movies when the page is loaded
  //   Provider.of<MovieListViewModel>(context, listen: false).fetchMovies("batman");
  // }

  @override
  Widget build(BuildContext context) {

    final m = Provider.of<MovieListViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: 
        Text('Movies'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left:10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: TextField(
                controller: _controller,
                onSubmitted: (value){
                  if(value.isNotEmpty){
                    m.fetchMovies(value);
                    _controller.clear();
                  }
                },
                style: TextStyle(color: Colors.white),
                  decoration:  InputDecoration(
                  hintText: "Search", 
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none
                ),
              ),
            ),
            Expanded(child: Movies(movies:m.movies))
        ],
        ),
      ),
    );
  }
}