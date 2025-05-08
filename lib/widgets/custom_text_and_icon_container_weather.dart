import 'package:flutter/material.dart';

class CustomTextAndIconContainerWeather extends StatelessWidget {
  const CustomTextAndIconContainerWeather({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text, icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'SF',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
