import 'package:flutter/material.dart';
import 'package:todo/src/models/todo.dart';
import 'package:todo/src/widgets/todo_item.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;

  TodoList({@required this.todos});

  @override
  Widget build(BuildContext context) {
    return Text("todo list viewe");
  }
}
