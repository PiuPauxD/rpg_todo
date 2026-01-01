import 'package:flutter/material.dart';
import 'package:rpg_todo/screens/home_screen.dart';
import 'package:rpg_todo/screens/login_screen.dart';
import 'package:rpg_todo/widgets/button.dart';
import 'package:rpg_todo/widgets/divider_with_text.dart';
import 'package:rpg_todo/widgets/registration_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff0f0f0),
        title: Text(
          'Back',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context), 
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            size: 18,
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
                child: Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outlined,
                        size: height * 0.035,
                        color: Color(0xffE25535),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'RPG-Todo',
                        style: TextStyle(
                          fontSize: height * 0.025,
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
              height: height * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create new Account',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RegistrationTextfield(
                    maxLines: 1,
                    controller: firstNameController, 
                    labelFieldName: 'First Name', 
                    hintFieldName: 'Enter first name',
                  ),
                  RegistrationTextfield(
                    maxLines: 1,
                    controller: lastNameController, 
                    labelFieldName: 'Last Name', 
                    hintFieldName: 'Enter last name',
                  ),
                  RegistrationTextfield(
                    maxLines: 1,
                    controller: emailController, 
                    labelFieldName: 'email', 
                    hintFieldName: 'Enter email',
                  ),
                  RegistrationTextfield(
                    maxLines: 1,
                    controller: passwordController, 
                    labelFieldName: 'Password', 
                    hintFieldName: 'Enter password',
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                      ), 
                      child: Text(
                        'I have account',
                        style:  TextStyle(
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
                  ),

                  //TODO successfull registration animation
                  Center(
                    child: Button(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HomeScreen(),
                        ),
                      ),
                      buttonColor: Color(0xffE25535), 
                      buttonText: 'Sign Up',  
                      textColor: Colors.white,
                    ),
                  ),

                  DividerWithText(
                    text: 'Sign up with',
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ///google icon 
                      IconButton(
                        onPressed: (){}, 
                        icon: Icon(
                          Icons.circle_outlined,
                          size: 42,
                        ),
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
            ),
          ],
        ),
      ),
    );
  }
}