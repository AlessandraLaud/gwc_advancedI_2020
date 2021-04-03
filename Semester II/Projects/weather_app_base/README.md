<p align="center">
  <a href="https://flutter.io/">
    <img src="https://diegolaballos.com/files/images/flutter-icon.jpg" alt="Logo" width=72 height=72>
  </a>

  <h3 align="center">Weather App</h3>

  <p align="center">
    A Flutter weather application
</p>


## Libraries & Tools Used

* [Provider](https://github.com/rrousselGit/provider)
* [Cuperetino Icons](https://github.com/flutter/cupertino_icons)
* [Http](https://github.com/dart-lang/http)
* [Intl](https://github.com/dart-lang/intl)
* [Equatable](https://github.com/felangel/equatable)
* [Api](https://www.metaweather.com)

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