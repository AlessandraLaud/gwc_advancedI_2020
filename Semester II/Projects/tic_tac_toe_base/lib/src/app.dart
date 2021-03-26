import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/pages/home_page.dart';
import 'package:tic_tac_toe/src/providers/game_provider.dart';
import 'package:tic_tac_toe/src/theme.dart';

class App extends StatelessWidget {
  static const String name = "Name goes here";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GameProvider(),
      child: MaterialApp(
        title: name,
        theme: theme,
        home: HomePage(name: name),
      ),
    );
  }
}
