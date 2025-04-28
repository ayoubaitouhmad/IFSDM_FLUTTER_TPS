// View 2: Movie detail view with dropdown selector
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../db/MoviesList.dart';
import '../models/Movie.dart';

class MovieDetailScreen extends StatefulWidget {
  final Movie initialMovie;

  MovieDetailScreen({required this.initialMovie});

  @override
  _MovieDetailScreenState createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  late Movie selectedMovie;
  final List<Movie> movies = MoviesList.movies;
  @override
  void initState() {
    super.initState();
    selectedMovie = widget.initialMovie;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie selector dropdown
            DropdownButtonFormField<int>(
              decoration: InputDecoration(
                labelText: 'Select Movie',
                border: OutlineInputBorder(),
              ),
              value: selectedMovie.id,
              items:
              movies.map((Movie movie) {
                return DropdownMenuItem<int>(
                  value: movie.id,
                  child: Text(movie.name),
                );
              }).toList(),
              onChanged: (int? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedMovie = movies.firstWhere(
                          (movie) => movie.id == newValue,
                    );
                  });
                }
              },
            ),

            SizedBox(height: 0),

            // Movie details card
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(0.1),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          color: Color.fromRGBO(0, 96, 91, 1),
                          child: Image.network(
                            selectedMovie.imageUrl,
                            fit: BoxFit.fitHeight,
                          ),
                        ),

                        Text(
                          selectedMovie.name,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),

                        Text(
                          selectedMovie.story,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),

                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}