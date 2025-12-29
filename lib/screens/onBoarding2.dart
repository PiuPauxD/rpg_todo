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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.science_outlined,
                size: 256,
              ),
              Column(
                children: [
                  const Text(
                    'Complete tasks to level up!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Each completed task gives your experience. The more quests you finish, the higher your character's level!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
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
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}