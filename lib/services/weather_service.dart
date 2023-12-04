import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService(this.dio);

  Future<WeatherModel> getWeather({required String city}) async {
    Response response = await dio.get(
        "https://api.weatherapi.com/v1/forecast.json?key=a3c2b22555e64609990135802230412&q=$city&days=1");
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
