import 'package:flutter/material.dart';
import 'package:stream_choose/src/pages/home_page.dart';
import 'package:stream_choose/src/providers/disney_plus_provider.dart';
import 'package:stream_choose/src/repository/movie_repository.dart';
import 'package:stream_choose/src/theme.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  static const String name = "Disney+ Stream Choose";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DisneyPlusProvider(
          repository: MovieRepository(httpClient: http.Client())),
      child: MaterialApp(
        title: name,
        theme: theme,
        home: HomePage(
          title: name,
        ),
      ),
    );
  }
}
