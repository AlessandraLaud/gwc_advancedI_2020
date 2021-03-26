import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/providers/game_provider.dart';

class HomePage extends StatelessWidget {
  final String name;

  HomePage({@required this.name});

  @override
  Widget build(BuildContext context) {
    /*
     * This is how you will access your theme data
    */
    ThemeData theme = Theme.of(context);

    return Consumer<GameProvider>(
      builder: (BuildContext context, GameProvider provider, Widget _) {
        return Scaffold(
          appBar: AppBar(
            title: Text(name),
          ),
          body: Center(
            child: Text("Tic Tac Toe game here"),
          ),
        );
      },
    );
  }
}
