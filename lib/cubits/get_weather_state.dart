import 'package:weather_app/models/weather_model.dart';

abstract class WeatherStates {}

class WeatherInitialState extends WeatherStates {}

class WeatherLoadingState extends WeatherStates {}

class NoWeatherState extends WeatherStates {}

class WeatherSuccessState extends WeatherStates {
  final WeatherModel weatherModel;

  WeatherSuccessState(this.weatherModel);

}

class WeatherErrorState extends WeatherStates {
  final String error;
  WeatherErrorState(this.error);
}