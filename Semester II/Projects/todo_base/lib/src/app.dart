import 'package:flutter/material.dart';
import 'package:todo/src/providers/todos_provider.dart';
import 'package:todo/src/theme.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/pages/home/home_page.dart';

class App extends StatelessWidget {
  static const String name = "Todos";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: MaterialApp(
        title: name,
        theme: theme,
        home: HomePage(name: name),
      ),
    );
  }
}
