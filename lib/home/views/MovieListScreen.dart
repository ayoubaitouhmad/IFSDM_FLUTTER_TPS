import 'package:flutter/material.dart';
import 'package:fluttert1ex1/home/widgets/MovieItem.dart';

import '../db/MoviesList.dart';
import '../models/Movie.dart';


class MovieListScreen extends StatelessWidget {

  final List<Movie> movies = MoviesList.movies;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movies Liste')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          // Nombre de colonnes
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,        // deux éléments par ligne
            crossAxisSpacing: 8.0,    // espace horizontal
            mainAxisSpacing: 8.0,     // espace vertical
          ),
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return MovieItem(movie: movies[index]);
          },
        ),
      ),
    );
  }
}





