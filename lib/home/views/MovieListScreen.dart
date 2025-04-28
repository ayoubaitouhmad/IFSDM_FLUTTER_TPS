
import 'package:flutter/material.dart';
import 'package:fluttert1ex1/home/widgets/MovieItem.dart';

import '../db/MoviesList.dart';
import '../models/Movie.dart';
import 'MovieDetailScreen.dart';

class MovieListScreen extends StatelessWidget {

  final List<Movie> movies = MoviesList.movies;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Movies List')),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieItem(movie: movies[index]);
        },
      ),
    );
  }
}





