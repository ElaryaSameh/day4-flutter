import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';

class CustomContainerDayContent extends StatelessWidget {
  const CustomContainerDayContent({
    super.key,
    required this.title,
    required this.image,
    required this.subTitle,
  });
  final String title, image, subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 70,
      decoration: BoxDecoration(
        color: Color(0Xff103f8b),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomText(text: title),
          Image.asset(image),
          CustomText(text: subTitle),
        ],
      ),
    );
  }
}
