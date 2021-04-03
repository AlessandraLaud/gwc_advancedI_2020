<p align="center">
  <a href="https://flutter.io/">
    <img src="https://diegolaballos.com/files/images/flutter-icon.jpg" alt="Logo" width=72 height=72>
  </a>

  <h3 align="center">Disney Stream Choose</h3>

  <p align="center">
    A Flutter mobile app that randomly chooses a disney movie for you to watch on Disney+
</p>


## Libraries & Tools Used

* [Provider](https://github.com/rrousselGit/provider)
* [Cuperetino Icons](https://github.com/flutter/cupertino_icons)
* [Http](https://github.com/dart-lang/http)
* [Intl](https://github.com/dart-lang/intl)
* [Api](https://www.themoviedb.org/documentation/api)

## Project Directions

You are to build a fully functioning disney stream choose app.

**Requirements:**
1) On app start, the disney app should show up.
2) A choose botton should be displayed. This button should randomly choose a disney movie to watch
3) The movie image and title should be displayed as well

Fill out the `home_page.dart` file provided in the base app. You are to also fill out **1 widget**: `movie_section.dart`
The home_page will contain the main layout of the app: the movie section and the button; The movie_seection widget should display the movie and the title

## Libraries & Tools Used

* [Provider](https://github.com/rrousselGit/provider) (State Management)

## Folder structure

```bash
.
└── lib
    ├── src
    │    ├── models     # Contains the apps models (represents app data)
    │    ├── pages      # Contains the apps pages/views
         ├── providers  # Contains the apps providers (Changes data and provides data)
         ├── repository # Provides the abstraction of data
         ├── widgets    # Contains the apps widgets
         ├── app.dart   # The app's first view on start
    │    └── theme.dart # app theme/style
    └── main.dart       # app start
```