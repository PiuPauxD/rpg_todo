import 'package:flutter/material.dart';
import 'package:rpg_todo/screens/home_screen.dart';
import 'package:rpg_todo/widgets/button.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                'Start your adventure!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                'Add new quests...',
              ),
            ),
            Button(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeScreen(),
                  ),
                );
              },
              buttonColor: Color(0xffE25535), 
              buttonText: 'Get Started', 
              buttonIcon: Icons.arrow_forward_outlined, 
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}