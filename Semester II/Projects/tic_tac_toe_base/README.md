<p align="center">
  <a href="https://flutter.io/">
    <img src="https://diegolaballos.com/files/images/flutter-icon.jpg" alt="Logo" width=72 height=72>
  </a>

  <h3 align="center">Tic Tac Toe</h3>

  <p align="center">
    A Tic Tac Toe Flutter mobile app game
</p>

## Table of contents

- [Quick start](#quick-start)
- [Libraries & Tools Used](#libraries-&-tools-used)

## Project Directions

You are to build a fully functioning tic tac toe app.

**Requirements:**
1) On app start, a tic tac toe board should show up. Along with the board, the player number and character should be displayed
2) A reseet button should also be displayed. On click, the game should be reset to a new game
3) When a player wins, the screen should change to declare who has won!
4) If there is a tie, the screen should also tell the users that there is a tie.

Fill out the `home_page.dart` file provided in the base app. You are to also fill out **2 widgets**: `game.dart` and `gameOver.dart`.
The home_page will contain the game widget; if the game is over, the home_page will then display the gameOver widget. 

## Libraries & Tools Used

* [Provider](https://github.com/rrousselGit/provider) (State Management)

## Folder structure

```bash
.
└── lib
    ├── src
    │    ├── models     # Contains the apps models (represents app data)
    │    ├── pages      # Contains the apps pages/views
    │    ├── providers  # Contains the apps providers (Changes data and provides data)
    │    ├── widgets    # A folder that contains the apps widgets
    │    ├── app.dart   # The app's first view on start
    │    └── theme.dart # app theme/style
    └── main.dart       # app start
```