import 'package:flutter/material.dart';
import '/models/weather_model.dart';
import '/widgets/custom_text_and_icon_container_weather.dart';

class CustomContainerWeather extends StatelessWidget {
  const CustomContainerWeather({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: Color(0XFF001026).withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomTextAndIconContainerWeather(
            text: '6 %',
            icon: 'assets/images/Group.png',
          ),
          CustomTextAndIconContainerWeather(
            text: ' ${weatherModel.main?.humidity ?? 0} %',
            icon: 'assets/images/noun-humidity-151847 1.png',
          ),
          CustomTextAndIconContainerWeather(
            text: ' ${weatherModel.wind?.speed ?? 0} km/h',
            icon: 'assets/images/noun-wind-4507827 1.png',
          ),
        ],
      ),
    );
  }
}
