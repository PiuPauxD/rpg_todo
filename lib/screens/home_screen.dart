import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg_todo/widgets/add_todo_dialog.dart';
import 'package:rpg_todo/widgets/level_bar.dart';
import 'package:rpg_todo/widgets/todo_item.dart';

import '../providers/todo_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final provider = context.watch<TodoProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('RPG Todo'),
      ),

      body: Column(
        children: [
          LevelBar(
            level: provider.level,
            xp: provider.xp,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: provider.todos.length,
              itemBuilder: (context, index) {
                final todo = provider.todos[index];
                return TodoItem(todo: todo);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddDialog(BuildContext context) {
    showDialog(
      context: context, 
      builder: (_) => const AddTodoDialog(),
    );
  }
}