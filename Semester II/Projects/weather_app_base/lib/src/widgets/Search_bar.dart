import 'package:flutter/material.dart';
import 'package:weatherapp/src/providers/weather_provider.dart';
import 'package:provider/provider.dart';

class SearchBar extends StatelessWidget {
  final controller;

  SearchBar({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
        builder: (BuildContext context, WeatherProvider provider, Widget _) {
      return Material(
        elevation: 10,
        shadowColor: Colors.grey[600],
        child: TextField(
          onSubmitted: (String value) async {
            await provider.setLocation(value.toLowerCase());
            await provider.refresh();
          },
          controller: controller,
          cursorColor: Theme.of(context).primaryColor,
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).accentColor,
            prefixIcon:
                Icon(Icons.search, color: Theme.of(context).primaryColor),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
            ),
            hintText: 'Search City',
          ),
        ),
      );
    });
  }
}
