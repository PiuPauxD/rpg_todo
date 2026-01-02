import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final VoidCallback onTap;

  const ProfileImage({
    super.key, 
    required this.width, 
    required this.height, 
    required this.radius, 
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(radius),
      ),
      child:  InkWell(
        onTap: onTap,
        child: Icon(Icons.person_outline),
        ),
    );
  }
}