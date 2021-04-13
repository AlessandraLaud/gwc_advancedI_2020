import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/providers/todos_provider.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodosProvider>(
      builder: (context, provider, child) {
        return Text("Todo list goes here");
      },
    );
  }
}
