import 'package:flutter/material.dart';
import 'package:rpg_todo/screens/onBoarding3.dart';
import 'package:rpg_todo/widgets/button.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

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
                'Complete tasks to level up!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                'Each completed task...'
              ),
            ),
            Button(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Onboarding3(),
                  ),
                );
              },
              buttonColor: Color(0xffE25535), 
              buttonText: 'Next', 
              buttonIcon: Icons.arrow_forward_outlined, 
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}