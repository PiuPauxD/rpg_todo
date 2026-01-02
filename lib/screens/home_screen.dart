import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg_todo/providers/todo_provider.dart';
import 'package:rpg_todo/screens/add_task_screen.dart';
import 'package:rpg_todo/widgets/button.dart';
import 'package:rpg_todo/widgets/calendar.dart';
import 'package:rpg_todo/widgets/level_bar.dart';
import 'package:rpg_todo/widgets/profile_image.dart';
import 'package:rpg_todo/widgets/todo_item.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  DateTime _focusedDay = DateTime.now();
  // DateTime? _selectedDay;
  // late DateTime _rangeStart;
  // late DateTime _rangeEnd;

  List<String> difficulty = ['Easy', 'Medium', 'Hard'];
  
  @override
  Widget build(BuildContext context) {

    final provider = context.watch<TodoProvider>();
    final kFirstDay = DateTime(_focusedDay.year, _focusedDay.month - 3, _focusedDay.day);
    final kLastDay = DateTime(_focusedDay.year, _focusedDay.month + 3, _focusedDay.day);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    String choiceDifficulty = difficulty.first;
    
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileImage(
                    width: screenHeight * 0.06, 
                    height: screenHeight * 0.06, 
                    radius: screenHeight * 0.06, 
                    onTap: (){},
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Oleg!',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Today you have 5 tasks to complete',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(width: 5),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(
                      Icons.settings_outlined,
                      size: screenHeight * 0.04,
                    ),
                  ),
                ],
              ),
          
              const SizedBox(height: 10),
          
              Calendar(
                kFirstDay: kFirstDay, 
                kLastDay: kLastDay, 
                focusedDay: _focusedDay, 
                // selectedDay: _selectedDay, 
                // rangeStart: _rangeStart, 
                // rangeEnd: _rangeEnd, 
                // onDaySelected: _onDaySelected(_selectedDay, _focusedDay), 
                // onRangeSelected: _onRangeSelected(start, DateTime? end, _focusedDay),
              ),

              const SizedBox(height: 5),

              SizedBox(
                width: screenWidth,
                height: screenHeight * 0.3,
               
                child: Column(
                  children: [
                    Icon(
                      Icons.man_outlined,
                      size: screenHeight * 0.2,
                    ),
                    const SizedBox(height: 10),
                    LevelBar(
                      level: provider.level, 
                      xp: provider.xp,
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Difficulty',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  DropdownButton<String>(
                    value: choiceDifficulty,
                    icon: const Icon(Icons.arrow_drop_down_outlined),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey),
                    underline: Container(height: 0),
                    onChanged: (String? value) {
                      setState(() {
                        choiceDifficulty = value!;
                      });
                    },
                    items: difficulty.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),

              const SizedBox(height: 5),
              Expanded(
                child: ListView.builder(
                  itemCount: provider.todos.length,
                  itemBuilder: (context, index) {
                    final todo = provider.todos[index];
                    return TodoItem(todo: todo);
                  }
                )
              ),

              const SizedBox(height: 5),
              Button(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddTaskScreen(),
                  ),
                ), 
                buttonColor: Color(0xffE25535), 
                buttonText: 'Add task', 
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
  //   if (!isSameDay(_selectedDay, selectedDay)) {
  //     setState(() {
  //       _selectedDay = selectedDay;
  //       _focusedDay = focusedDay;
  //       _rangeStart = null;
  //       _rangeEnd = null;
  //     });

  //     // _selectedEvents.value = _getEventsForDay(selectedDay);
  //   }
  // }

  // void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
  //   setState(() {
  //     _selectedDay = null;
  //     _focusedDay = focusedDay;
  //     _rangeStart = start;
  //     _rangeEnd = end;
  //   });
  // }
}

// appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () => Navigator.pop(context), 
      //     icon: Icon(Icons.arrow_back_ios_outlined),
      //   ),
      //   title: const Text('RPG Todo'),
      // ),

      // body: Column(
      //   children: [
      //     LevelBar(
      //       level: provider.level,
      //       xp: provider.xp,
      //     ),
      //     Expanded(
      //       child: ListView.builder(
      //         itemCount: provider.todos.length,
      //         itemBuilder: (context, index) {
      //           final todo = provider.todos[index];
      //           return TodoItem(todo: todo);
      //         },
      //       ),
      //     ),

      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      //       child: Align(
      //         alignment: Alignment.bottomRight,
      //         child: Container(
      //           width: 50,
      //           height: 50,
      //           decoration: BoxDecoration(
      //             color: Color(0xffE25535),
      //             borderRadius: BorderRadius.circular(25),
      //           ),
      //           child: IconButton(
      //             onPressed: () => Navigator.push(
      //               context, 
      //               MaterialPageRoute(
      //                 builder: (_) => AddTaskScreen(),
      //               ),
      //             ), 
      //             icon: Icon(
      //               Icons.add_outlined,
      //               color: Colors.white,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (_) => AddTaskScreen(),
      //     ),
      //   ),
      //   child: const Icon(Icons.add),
      // ),