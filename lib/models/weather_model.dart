class WeatherModel {
  final String city;
  final String country;
  final String avgTemp;
  final String condition;
  final String maxTemp;
  final String minTemp;
  final HourForecast hours;
  final String? img;

  WeatherModel({
    required this.city,
    required this.country,
    required this.avgTemp,
    required this.condition,
    required this.maxTemp,
    required this.minTemp,
    required this.hours,
    this.img,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      city: json["location"]["name"],
      country: json["location"]["country"],
      avgTemp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      condition: json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      hours: json["forecast"]["forecastday"][0]["day"],
    );
  }
}

class HourForecast {
  final String time;
  final String img;
  final String avgTemp;
  HourForecast({
    required this.time,
    required this.img,
    required this.avgTemp,
  });
}
