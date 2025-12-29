import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onTap;
  final Color buttonColor;
  final Color textColor;
  final String buttonText;

  const Button({
    super.key, 
    required this.onTap, 
    required this.buttonColor, 
    required this.buttonText, 
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.7,
      height: screenHeight * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: buttonColor,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}