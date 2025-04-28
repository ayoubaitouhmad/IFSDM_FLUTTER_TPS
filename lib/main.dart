import 'package:flutter/material.dart';
import 'package:fluttert1ex1/home/db/MoviesList.dart';

import 'home/models/Movie.dart';
import 'home/views/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}


