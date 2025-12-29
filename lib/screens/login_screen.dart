import 'package:flutter/material.dart';
import 'package:rpg_todo/screens/home_screen.dart';
import 'package:rpg_todo/screens/register_screen.dart';
import 'package:rpg_todo/widgets/button.dart';
import 'package:rpg_todo/widgets/divider_with_text.dart';
import 'package:rpg_todo/widgets/registration_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff0f0f0),
        title: Text(
          'Back',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_outlined, size: 18),
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
                child: Padding(
                  padding: EdgeInsets.only(top: height * 0.015),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outlined,
                        size: 32,
                        color: Color(0xffE25535),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'RPG-Todo',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: width,
              height: height * 0.73,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.015),
                      const Text(
                        'Log in to you account',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      RegistrationTextfield(
                        controller: emailController,
                        labelFieldName: 'Email',
                        hintFieldName: 'Enter email',
                      ),
                      const SizedBox(height: 15),
                      RegistrationTextfield(
                        controller: passwordController,
                        labelFieldName: 'Pasword',
                        hintFieldName: 'Enter password',
                      ),
                    ],
                  ),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const RegisterScreen(),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'Create account',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationColor: Colors.grey,
                            decorationThickness: 3,
                          ),
                        ),
                      ),
                      
                      //TODO reset password screen
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationColor: Colors.grey,
                            decorationThickness: 3,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.01),
                  Center(
                    child: Button(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HomeScreen(),
                        ),
                      ),
                      buttonColor: Color(0xffE25535),
                      buttonText: 'Log in',
                      textColor: Colors.white,
                    ),
                  ),

                  SizedBox(height: height * 0.05),
                  Column(
                    children: [
                      DividerWithText(text: 'Sign up with'),

                      //TODO login with social media
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ///google icon
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.circle_outlined, size: 42),
                          ),

                          ///facebook icon
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.facebook_outlined,
                              color: Colors.purple,
                              size: 42,
                            ),
                          ),

                          ///twitter icon
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.one_x_mobiledata_outlined,
                              color: Colors.blue,
                              size: 42,
                            ),
                          ),

                          ///apple icon
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.apple_outlined,
                              color: Colors.black,
                              size: 42,
                            ),
                          ),
                        ],
                      ),
                    ],
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
