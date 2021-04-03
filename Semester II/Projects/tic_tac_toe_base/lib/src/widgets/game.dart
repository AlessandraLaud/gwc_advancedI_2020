import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/providers/game_provider.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Consumer<GameProvider>(
        builder: (BuildContext context, GameProvider provider, Widget _) {
      return Container(
        child: Text("This is the game widget"),
      );
    });
  }
}
