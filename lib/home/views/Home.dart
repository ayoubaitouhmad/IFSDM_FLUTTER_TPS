
// List of sample movies

import 'package:flutter/material.dart';

import '../models/Movie.dart';
import '../db/MoviesList.dart';
import 'MovieListScreen.dart';


// View 1: List of all movies
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieListScreen();
  }
}

