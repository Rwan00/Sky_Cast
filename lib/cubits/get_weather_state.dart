abstract class WeatherStates {}

class WeatherInitialState extends WeatherStates {}

class WeatherLoadingState extends WeatherStates {}

class NoWeatherState extends WeatherStates {}

class WeatherSuccessState extends WeatherStates {}

class WeatherErrorState extends WeatherStates {
  final String error;
  WeatherErrorState(this.error);
}