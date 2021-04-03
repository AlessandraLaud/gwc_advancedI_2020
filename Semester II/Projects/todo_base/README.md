<p align="center">
  <a href="https://flutter.io/">
    <img src="https://diegolaballos.com/files/images/flutter-icon.jpg" alt="Logo" width=72 height=72>
  </a>

  <h3 align="center">Todo App</h3>

  <p align="center">
    A Flutter todo application
</p>


## Libraries & Tools Used

* [Provider](https://github.com/rrousselGit/provider)
* [Cuperetino Icons](https://github.com/flutter/cupertino_icons)

## Project Directions

You are to build a fully functioning todo app.

**Requirements:**
1) The app should have 2 pages: A list of todos and a list of completed todos
2) There should bee an add todo button that opens up a dialog and allows the user to type in the new todo task

Fill out the `all_todos_tab` and `completed_todos_tab` files provided in the base app. You are to also fill out **3 widgets**: `create_todo_dialog` and `todo_item` and `todo_list` (you may also combine todo_item and todo_list if you would like).

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
    │    ├── widgets    # Contains the apps widgets
    │    ├── app.dart   # The app's first view on start
    │    └── theme.dart # app theme/style
    └── main.dart       # app start
```