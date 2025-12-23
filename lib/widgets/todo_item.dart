import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg_todo/models/todo.dart';
import 'package:rpg_todo/providers/todo_provider.dart';

class TodoItem extends StatelessWidget {

  final Todo todo;

  const TodoItem({
    super.key, 
    required this.todo
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.read<TodoProvider>();

    return ListTile(
      title: Text(
        todo.title,
        style: TextStyle(
          decoration: todo.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      leading: Checkbox(
        value: todo.isDone, 
        onChanged: (_) => provider.toggleTodo(todo.id),
      ),
      trailing: IconButton(
        onPressed: () => provider.removeTodo(todo.id), 
        icon: const Icon(Icons.delete),
      ),
    );
  }
}