import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/models/todo.dart';
import 'package:todo/src/providers/todos_provider.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;

  TodoList({@required this.todos});

  @override
  Widget build(BuildContext context) {
    return Consumer<TodosProvider>(
      builder: (context, provider, child) {
        return Text("Todo list goes here");
      },
    );
  }
}
