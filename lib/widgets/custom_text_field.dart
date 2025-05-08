import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Color(0XFF6d6d6d),
      style: TextStyle(
        fontSize: 16,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        color: Color(0XFF6d6d6d),
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0XFFd9d9d9),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(Icons.search, color: Color(0XFF6d6d6d)),
        hintText: 'Search City',
        hintStyle: TextStyle(
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          color: Color(0XFF808080),
        ),
      ),
    );
  }
}
