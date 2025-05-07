import 'package:flutter/material.dart';

import 'home/views/ home_page.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer',
      home: HomePage(),
    );
  }
}






