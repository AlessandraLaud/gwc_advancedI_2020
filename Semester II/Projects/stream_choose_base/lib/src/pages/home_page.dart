import 'package:flutter/material.dart';
import 'package:stream_choose/src/providers/disney_plus_provider.dart';
import 'package:provider/provider.dart';
import 'package:stream_choose/src/widgets/movie_section.dart';

class HomePage extends StatelessWidget {
  final title;

  HomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Consumer<DisneyPlusProvider>(
        builder: (BuildContext context, DisneyPlusProvider provider, Widget _) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
          ),
        ),
        body: Center(
          child: Text("Disney stream choose"),
        ),
      );
    });
  }
}
