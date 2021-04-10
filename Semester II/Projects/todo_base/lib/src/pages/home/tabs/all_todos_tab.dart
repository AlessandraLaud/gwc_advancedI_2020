/*
Consumer provides an easy way to listen for changes in the provider state and
re-render accordingly
Here, we need to re-rendeer the list items in case any of the task items change
*/
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/providers/todos_provider.dart';
import 'package:todo/src/widgets/todo_list.dart';
import 'package:todo/src/widgets/create_todo_dialog.dart';

class AllTodosTab extends StatefulWidget {
  @override
  _AllTodosTabState createState() => _AllTodosTabState();
}

class _AllTodosTabState extends State<AllTodosTab> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TodosProvider>(builder: (context, provider, child) {
      return Scaffold(
        body: Center(child: Text("Add todo list widget here")),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return CreateTodoDialog(controller: _controller);
                });
          },
        ),
      );
    });
  }
}
