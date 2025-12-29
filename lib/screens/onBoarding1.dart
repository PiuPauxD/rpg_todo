import 'package:flutter/material.dart';
import 'package:rpg_todo/screens/onBoarding2.dart';
import 'package:rpg_todo/widgets/button.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

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
                Icons.map_outlined,
                size: 256,
              ),
              Column(
                children: [
                  const Text(
                    'Welcome to RPG-Todo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Turn your tasks into quests and start earning experience for every completed task.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
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
                      builder: (BuildContext context) => const Onboarding2(),
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