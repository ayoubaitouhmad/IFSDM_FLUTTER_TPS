import 'package:flutter/material.dart';

import '../models/Movie.dart';
import '../views/MovieDetailScreen.dart';

class MovieItem extends StatelessWidget {
   final Movie movie;

   MovieItem({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: ListTile(
        title: Text(movie.name),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => MovieDetailScreen(initialMovie: movie),
            ),
          );
        },
      ),
    );
  }
}
