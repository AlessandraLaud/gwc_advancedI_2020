import 'package:flutter/material.dart';
import 'package:todo/src/providers/todos_provider.dart';
import 'package:todo/src/models/todo.dart';
import 'package:provider/provider.dart';

class CreateTodoDialog extends StatelessWidget {
  final controller;

  CreateTodoDialog({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        title: Text("New Todo"),
        contentPadding: EdgeInsets.all(25),
        children: [
          TextField(
            controller: controller,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              hintText: 'Todo title',
            ),
          ),
          SizedBox(height: 20),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                  controller.clear();
                },
                child: Text('Cancel', style: TextStyle(color: Colors.red)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                  final Todo todo = Todo(title: controller.text);
                  Provider.of<TodosProvider>(context, listen: false)
                      .addTodo(todo);
                  controller.clear();
                },
                child: Text('Create', style: TextStyle(color: Colors.green)),
              )
            ],
          )
        ]);
  }
}
