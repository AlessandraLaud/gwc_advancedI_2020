import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  fontFamily: "Poppins",
  primaryColor: Colors.lightBlue[700],
  primaryColorLight: Colors.lightBlue[600],
  primaryColorDark: Colors.lightBlue[900],
  accentColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(color: Colors.lightBlue[900]),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.lightBlue[900],
  ),
  textTheme: TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.lightBlue[900]),
      bodyText1: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 50,
          color: Colors.blueGrey[800])),
);
