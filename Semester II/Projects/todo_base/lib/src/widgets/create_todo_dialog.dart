import 'package:flutter/material.dart';
import 'package:todo/src/providers/todos_provider.dart';
import 'package:todo/src/models/todo.dart';
import 'package:provider/provider.dart';

class CreateTodoDialog extends StatelessWidget {
  final controller;

  CreateTodoDialog({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return Text("Create a todo dialog here");
  }
}
