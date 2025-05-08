import 'package:flutter/material.dart';
import '../models/weather_model.dart';
import '../widgets/custom_container_day.dart';
import '../widgets/custom_container_weather.dart';
import '../widgets/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    final temp = weatherModel.main?.temp?.round() ?? 0;
    final max = weatherModel.main?.tempMax?.round() ?? 0;
    final min = weatherModel.main?.tempMin?.round() ?? 0;
    final desc = weatherModel.weather?.first.description ?? '';
    final city = weatherModel.name ?? 'Unknown';

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0XFF08244F), Color(0XFF134CB5), Color(0XFF0B42AB)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on_outlined, color: Colors.white),
                  const SizedBox(width: 10),
                  Text(city, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
                ],
              ),
              Image.asset('assets/images/Sun cloud angled rain.png', height: 207, width: 284),
              Text('$temp°', style: const TextStyle(color: Colors.white, fontSize: 64, fontWeight: FontWeight.w600)),
              Text(desc, style: const TextStyle(color: Colors.white, fontSize: 18)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Max.: $max°', style: const TextStyle(color: Colors.white)),
                  const SizedBox(width: 20),
                  Text('Min.: $min°', style: const TextStyle(color: Colors.white)),
                ],
              ),
              const SizedBox(height: 20),
              CustomContainerWeather(weatherModel: weatherModel),
              const SizedBox(height: 20),
              const CustomContainerDay(),
              const SizedBox(height: 20),
              CustomElevatedButton(
                text: 'Back',
                onTap: () => Navigator.pushReplacementNamed(context, '/SelectLocationScreen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
