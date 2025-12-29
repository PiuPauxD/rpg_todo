import 'package:flutter/material.dart';
import 'package:rpg_todo/screens/onBoarding1.dart';
import 'package:rpg_todo/screens/onBoarding2.dart';
import 'package:rpg_todo/screens/onBoarding3.dart';

class OnboardingScreen extends StatelessWidget {

  final VoidCallback onFinish;

  const OnboardingScreen({super.key, required this.onFinish});

  @override
  Widget build(BuildContext context) {

    final pages = [
      Onboarding1(),
      Onboarding2(),
      Onboarding3(),
    ];

    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          final page = pages[index];
          return page;
        },
      ),
    );
  }

}