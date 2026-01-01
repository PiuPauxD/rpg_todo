import 'package:flutter/material.dart';

class AddTaskTextfield extends StatelessWidget {

  final TextEditingController controller;
  final String labelName;

  final String hintFieldName;
  final IconData icon;
  final int maxLines;

  const AddTaskTextfield({
    super.key, required this.controller, 
    required this.labelName, 
    required this.hintFieldName, 
    required this.icon, 
    required this.maxLines}
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: Icon(icon),
        label: Text(labelName),
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