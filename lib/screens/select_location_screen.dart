import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '/screens/home_screen.dart';
import '/services/weather_services.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_field.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({super.key});
  static const String routeName = '/SelectLocationScreen';

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {
  final TextEditingController _cityController = TextEditingController();
  final WeatherService _weatherService = WeatherService(Dio());
  bool _isLoading = false;

  void _getWeather() async {
    setState(() => _isLoading = true);
    try {
      final weather = await _weatherService.getCurrentWeather(cityName: _cityController.text.trim());
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen(weatherModel: weather)),
      );
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: Color(0XFF08244F)))
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/W.png', height: 109, width: 99),
                      const SizedBox(width: 20),
                      Column(
                        children: const [
                          Text('weather', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                          Text('App', style: TextStyle(fontSize: 30, color: Color(0XFF808080))),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Image.asset('assets/images/Sun cloud angled rain.png', height: 207, width: 284),
                  const SizedBox(height: 70),
                  Row(
                    children: [
                      Expanded(child: CustomTextField(controller: _cityController)),
                      const SizedBox(width: 16),
                      CustomElevatedButton(text: 'check', onTap: _getWeather),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
