import 'dart:developer';

import 'package:dio/dio.dart';
import '../models/weather_model.dart';

class WeatherService {
  final Dio dio;

  final String baseUrl = 'https://api.openweathermap.org/data/2.5/weather';
  final String apiKey = 'bbb5f91b9519469fb405c7e362a7eecc';

  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl?q=$cityName&appid=$apiKey&units=metric',
      );

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage =
          e.response?.data['error']['message'] ??
          'Oops, there was an error. Please try again later.';
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Oops, there was an error. Please try again later.');
    }
  }
}
