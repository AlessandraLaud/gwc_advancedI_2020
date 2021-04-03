import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/src/providers/weather_provider.dart';

class HomePage extends StatefulWidget {
  final String name;

  HomePage({@required this.name});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
      builder: (BuildContext context, WeatherProvider provider, Widget _) {
        return Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cloud,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Weather'),
              ],
            ),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body: Center(
            child: Text("weather app"),
          ),
        );
      },
    );
  }
}
