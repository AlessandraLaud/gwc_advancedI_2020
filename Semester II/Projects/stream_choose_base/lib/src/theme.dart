import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  fontFamily: "Poppins",
  primaryColor: Colors.deepPurple[600],
  primaryColorLight: Colors.deepPurple[500],
  primaryColorDark: Colors.deepPurple[900],
  accentColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(color: Colors.deepPurple[600]),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.deepPurple[600],
  ),
  textTheme: TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 21, color: Colors.grey[850]),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.grey[850])),
);
