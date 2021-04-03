import 'package:flutter/material.dart';
import 'package:weatherapp/src/providers/weather_provider.dart';
import 'package:provider/provider.dart';

class Forcast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
        builder: (BuildContext context, WeatherProvider provider, Widget _) {
      return Container(child: Text("focast here"));
    });
  }
}
