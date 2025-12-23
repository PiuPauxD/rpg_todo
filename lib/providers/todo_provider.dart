import 'package:flutter/material.dart';
import '../models/todo.dart';

class TodoProvider extends ChangeNotifier {
  final List<Todo> _todos = [];

  int _xp = 0;

  List<Todo> get todos => _todos;
  int get xp => _xp;
  int get level => _xp ~/ 100 + 1;

  void addTodo(String title) {
    _todos.add(
      Todo(
        id: DateTime.now().toString(),
        title: title,
      ),
    );
    notifyListeners();
  }

  void toggleTodo(String id) {
    final todo = _todos.firstWhere((t) => t.id == id);

    if (!todo.isDone) {
      todo.isDone = true;
      _xp += 20;
      notifyListeners();
    }
  }

  void removeTodo(String id) {
    _todos.removeWhere((t) => t.id == id);
    notifyListeners();
  }
}