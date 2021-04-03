import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/models/game_model.dart';

class GameProvider with ChangeNotifier {
  GameModel game;
  bool error = false;

  GameModel get getGame => game;

  GameProvider() {
    List<BoardPiece> board =
        List<BoardPiece>.generate(9, (index) => BoardPiece.undefined);
    game = GameModel(board: board);
  }

  void reset() {
    List<BoardPiece> board =
        List<BoardPiece>.generate(9, (index) => BoardPiece.undefined);
    error = false;
    game = game.copyWith(
        board: board,
        isWin: false,
        isDraw: false,
        currentPlayer: Player.player1,
        currentPlayerPiece: BoardPiece.X);
    notifyListeners();
  }

  void makeMove(int position) {
    List<BoardPiece> updatedBoard = getUpdatedBoard(position);
    Player currentPlayer = getNextPlayer();
    BoardPiece currentPlayerPiece = getNextPlayerPiece();
    bool isWin = checkForWin();
    bool isDraw = checkForDraw(isWin);

    // if the spot is not filled, update the game
    if (!error) {
      game = game.copyWith(
          board: updatedBoard,
          currentPlayer: currentPlayer,
          currentPlayerPiece: currentPlayerPiece,
          isWin: isWin,
          isDraw: isDraw);
      print(updatedBoard);

      notifyListeners();
    }
  }

  List<BoardPiece> getUpdatedBoard(int position) {
    List<BoardPiece> board = game.board;

    if (game.board[position] == BoardPiece.undefined) {
      board[position] = game.currentPlayerPiece;
      error = false;
    } else {
      error = true;
    }

    return board;
  }

  Player getNextPlayer() {
    if (game.currentPlayer == Player.player1) {
      return Player.player2;
    } else {
      return Player.player1;
    }
  }

  BoardPiece getNextPlayerPiece() {
    if (game.currentPlayerPiece == BoardPiece.X) {
      return BoardPiece.O;
    } else {
      return BoardPiece.X;
    }
  }

  String getBoardPiece(int position) {
    final board = game.board;

    switch (board[position]) {
      case BoardPiece.X:
        {
          return 'X';
        }
        break;
      case BoardPiece.O:
        {
          return 'O';
        }
        break;
      default:
        {
          return '';
        }
        break;
    }
  }

  bool checkForWin() {
    List<BoardPiece> board = game.board;

    // rows
    if (board[0] == board[1] &&
            board[0] == board[2] &&
            checkUndefined(0, 1, 2) ||
        board[3] == board[4] &&
            board[3] == board[5] &&
            checkUndefined(3, 4, 5) ||
        board[6] == board[7] &&
            board[6] == board[8] &&
            checkUndefined(6, 7, 8)) {
      return true;
    }

    // columns
    if (board[0] == board[3] &&
            board[0] == board[6] &&
            checkUndefined(0, 3, 6) ||
        board[1] == board[4] &&
            board[1] == board[7] &&
            checkUndefined(1, 4, 7) ||
        board[2] == board[5] &&
            board[2] == board[8] &&
            checkUndefined(2, 5, 8)) {
      return true;
    }

    // diagonal
    if (board[0] == board[4] &&
            board[0] == board[8] &&
            checkUndefined(0, 4, 8) ||
        board[2] == board[4] &&
            board[2] == board[6] &&
            checkUndefined(2, 4, 6)) {
      return true;
    }

    return false;
  }

  bool checkUndefined(int position1, int position2, int position3) {
    List<BoardPiece> board = game.board;

    return board[position1] != BoardPiece.undefined &&
        board[position2] != BoardPiece.undefined &&
        board[position3] != BoardPiece.undefined;
  }

  bool checkForDraw(bool isWin) {
    bool fullBoard = true;
    for (BoardPiece piece in game.board) {
      if (piece == BoardPiece.undefined) {
        fullBoard = false;
        break;
      }
    }

    return !isWin && fullBoard ? true : false;
  }
}
