import 'package:flutter/material.dart';

import '../models/Movie.dart';


class MovieItem extends StatelessWidget {
  final Movie movie;

  MovieItem({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      elevation: 5,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          movie.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
