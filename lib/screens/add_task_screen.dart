import 'package:flutter/material.dart';
import 'package:rpg_todo/widgets/add_task_textField.dart';
import 'package:rpg_todo/widgets/button.dart';
import 'package:rpg_todo/widgets/registration_textfield.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool _giveVerse = false;
    final _taskNameController = TextEditingController();
    final _datetimeController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfff0f0f0),
        leading: IconButton(
          onPressed: () => Navigator.pop(context), 
          icon: Icon(Icons.close_outlined),
        ),
        title: const Text(
          'Cancel',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),

      body: SafeArea(
        child: Stack(
          alignment: AlignmentGeometry.bottomLeft,
          children: [

            Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0xfff0f0f0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Add new task',
                  style: TextStyle(
                    fontSize: height * 0.025,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: width,
              height: height * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddTaskTextfield(
                    controller: _taskNameController, 
                    labelName: 'Task Name', 
                    hintFieldName: 'Enter task name', 
                    icon: Icons.text_format_outlined, 
                    maxLines: 1,
                  ),

                  AddTaskTextfield(
                    controller: _taskNameController, 
                    labelName: 'Date', 
                    hintFieldName: 'Pick task date', 
                    icon: Icons.calendar_month_outlined , 
                    maxLines: 1,
                  ),

                  AddTaskTextfield(
                    controller: _taskNameController, 
                    labelName: 'Difficulty', 
                    hintFieldName: 'Choice task difficulty', 
                    icon: Icons.arrow_drop_down_outlined, 
                    maxLines: 1,
                  ),

                  AddTaskTextfield(
                    controller: _taskNameController, 
                    labelName: 'Subtask', 
                    hintFieldName: 'Enter sub task', 
                    icon: Icons.text_format_outlined, 
                    maxLines: 1,
                  ),

                  AddTaskTextfield(
                    controller: _taskNameController, 
                    labelName: 'Task Description', 
                    hintFieldName: 'Enter task description', 
                    icon: Icons.text_format_outlined, 
                    maxLines: 4,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Reminder',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Switch(
                        value: _giveVerse, 
                        onChanged: (bool newValue){
                          setState(() {
                            newValue == true;
                            _giveVerse = newValue;
                          });
                        },
                      ),
                    ],
                  ),

                  Center(
                    child: Button(
                      onTap: (){}, 
                      buttonColor: Color(0xffE25535), 
                      buttonText: 'Save', 
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}