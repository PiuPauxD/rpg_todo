import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg_todo/screens/add_task_screen.dart';
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
        leading: IconButton(
          onPressed: () => Navigator.pop(context), 
          icon: Icon(Icons.arrow_back_ios_outlined),
        ),
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

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffE25535),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  onPressed: () => Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (_) => AddTaskScreen(),
                    ),
                  ), 
                  icon: Icon(
                    Icons.add_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (_) => AddTaskScreen(),
      //     ),
      //   ),
      //   child: const Icon(Icons.add),
      // ),
    );
  }

  // void _showAddDialog(BuildContext context) {
  //   showDialog(
  //     context: context, 
  //     builder: (_) => const AddTaskScreen(),
  //   );
  // }
}