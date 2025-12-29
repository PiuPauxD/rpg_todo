import 'package:flutter/material.dart';

class RegistrationTextfield extends StatelessWidget {

  final TextEditingController controller;
  final String labelFieldName;
  final String hintFieldName;

  const RegistrationTextfield({
    super.key, 
    required this.controller,
    required this.labelFieldName,
    required this.hintFieldName,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelFieldName,
        labelStyle: TextStyle(
          fontSize: 14,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
        hintText: hintFieldName,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}