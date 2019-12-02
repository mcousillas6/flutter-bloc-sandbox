import 'package:flutter/material.dart';
import 'package:movieapp/HomePage.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        backgroundColor: Colors.black
      ),
      home: HomePage(title: 'SWAPI Demo'),
    );
  }
}
