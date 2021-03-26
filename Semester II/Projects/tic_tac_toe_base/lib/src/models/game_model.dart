import 'package:flutter/material.dart';

enum Player { notSet, player1, player2 }
enum BoardPiece { undefined, X, O }

class GameModel {
  List<dynamic> board;
  bool isWin;
  bool isDraw;
  Player currentPlayer;
  BoardPiece currentPlayerPiece;

  GameModel({
    @required this.board,
    this.isWin = false,
    this.isDraw = false,
    this.currentPlayer = Player.player1,
    this.currentPlayerPiece = BoardPiece.X,
  });

  GameModel copyWith(
          {List<dynamic> board,
          bool isWin,
          bool isDraw,
          Player currentPlayer,
          BoardPiece currentPlayerPiece}) =>
      GameModel(
        board: board ?? this.board,
        isWin: isWin ?? this.isWin,
        isDraw: isDraw ?? this.isDraw,
        currentPlayer: currentPlayer ?? this.currentPlayer,
        currentPlayerPiece: currentPlayerPiece ?? this.currentPlayerPiece,
      );
}
