import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:rpg_todo/providers/todo_provider.dart';
import 'package:rpg_todo/screens/onBoarding_screen.dart';
import 'package:rpg_todo/screens/register_screen.dart';
import 'package:rpg_todo/services/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final firstLaunch = await isFirstLaunch();

  runApp(
    ChangeNotifierProvider(
      create: (_) => TodoProvider(),
      child: MyApp(firstLaunch: firstLaunch),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool firstLaunch;
  const MyApp({super.key, required this.firstLaunch});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RPG Todo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: firstLaunch ? OnboardingScreen(
        onFinish: () async {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const RegisterScreen(),
            ),
          );
        }
      ) : const RegisterScreen(),
    );
  }
}