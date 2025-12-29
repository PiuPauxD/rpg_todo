import 'package:flutter/material.dart';
import 'package:rpg_todo/screens/register_screen.dart';
import 'package:rpg_todo/widgets/button.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

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
                Icons.explore_outlined,
                size: 256,
              ),
              Column(
                children: [
                  const Text(
                    'Start your adventure!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Add new quests, complete theme, and level up your hero. Ready for your first mission?',
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
                      builder: (_) => RegisterScreen(),
                    ),
                  );
                },
                buttonColor: Color(0xffE25535), 
                buttonText: 'Get Started', 
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}