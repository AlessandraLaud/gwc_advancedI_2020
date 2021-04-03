import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/src/pages/home_page.dart';
import 'package:weatherapp/src/providers/weather_provider.dart';
import 'package:weatherapp/src/repository/weather_repository.dart';
import 'package:weatherapp/src/theme.dart';
import 'package:http/http.dart' as http;

class App extends StatelessWidget {
  static const String name = "Weather";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(
          repository: WeatherRepository(httpClient: http.Client())),
      child: MaterialApp(
        title: name,
        theme: theme,
        home: HomePage(name: name),
      ),
    );
  }
}
