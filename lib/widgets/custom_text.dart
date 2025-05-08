import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'SF',
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: Colors.white,
      ),
    );
  }
}
