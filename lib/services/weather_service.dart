import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apiKey = "a3c2b22555e64609990135802230412";
  WeatherService(this.dio);

  Future<WeatherModel?> getWeather({required String city}) async {
    try {
      Response response =
          await dio.get("$baseUrl/forecast.json?key=$apiKey&q=$city&days=1");
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } catch (e) {
      return null;
    }
  }
}
