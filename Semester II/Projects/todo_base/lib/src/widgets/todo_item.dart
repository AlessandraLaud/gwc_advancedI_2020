import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  TodoItem({@required this.todo});

  @override
  Widget build(BuildContext context) {
    return Text("todo list item");
  }
}
