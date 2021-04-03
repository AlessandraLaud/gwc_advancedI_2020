import 'package:flutter/material.dart';
import 'package:stream_choose/src/providers/disney_plus_provider.dart';
import 'package:provider/provider.dart';

class MovieSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    const imageBaseUrl = "https://image.tmdb.org/t/p/w500";

    return Consumer<DisneyPlusProvider>(
        builder: (BuildContext context, DisneyPlusProvider provider, Widget _) {
      return Text("movie widget");
    });
  }
}
