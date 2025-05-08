import 'package:flutter/material.dart';
import '../widgets/custom_container_day_content.dart';

class CustomContainerDay extends StatelessWidget {
  const CustomContainerDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 217,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0XFF001026).withValues(alpha: 0.30),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                    fontFamily: 'SF',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Mar, 9',
                  style: TextStyle(
                    fontFamily: 'SF',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomContainerDayContent(
                  title: '29°C',
                  image: 'assets/images/Group 650.png',
                  subTitle: '15.00',
                ),
                CustomContainerDayContent(
                  title: '26°C',
                  image: 'assets/images/Group 650.png',
                  subTitle: '16.00',
                ),
                CustomContainerDayContent(
                  title: '24°C',
                  image: 'assets/images/Group 647.png',
                  subTitle: '17.00',
                ),
                CustomContainerDayContent(
                  title: '23°C',
                  image: 'assets/images/Group 655.png',
                  subTitle: '18.00',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
