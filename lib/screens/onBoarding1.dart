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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text('Welcome to RPG-Todo'),
            ),
            Container(
              child: Text(
                'Turn your tasks into quests and start earning experience for every completed task.'
              ),
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
              buttonIcon: Icons.arrow_forward_outlined, 
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}