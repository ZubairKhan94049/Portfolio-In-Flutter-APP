import 'package:flutter/material.dart';
import 'package:portfolioinflutter/about.dart';
import 'package:portfolioinflutter/home.dart';
import 'package:portfolioinflutter/projects.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "Soho",
      ),
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => MyHome(),
        'about': (context) => MyAbout(),
        'projects': (context) => MyProjects(),
      },
    ),
  );
}
