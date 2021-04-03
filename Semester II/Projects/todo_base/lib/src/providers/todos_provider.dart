/* 
This model will help us changee the state of our app and also notify flutter
when to re-render our app
*/
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todo/src/models/todo.dart';

class TodosProvider extends ChangeNotifier {
  final List<Todo> _todos = [];

  UnmodifiableListView<Todo> get allTodos => UnmodifiableListView(_todos);
  UnmodifiableListView<Todo> get incompletedTodos =>
      UnmodifiableListView(_todos.where((todo) => !todo.completed));
  UnmodifiableListView<Todo> get completedTodos =>
      UnmodifiableListView(_todos.where((todo) => todo.completed));

  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void toggleTodo(Todo todo) {
    final todoIndex = _todos.indexOf(todo);
    _todos[todoIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteTodo(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }
}
