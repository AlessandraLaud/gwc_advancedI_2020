import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/providers/todos_provider.dart';
import 'package:todo/src/widgets/todo_list.dart';

class CompletedTodosTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<TodosProvider>(
            builder: (context, todos, child) => Text("Completed Todos Page")),
      ),
    );
  }
}
