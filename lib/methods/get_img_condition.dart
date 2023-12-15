 String getImgCondition(String condition) {
  switch (condition) {
    case "Partly cloudy":
    case "Cloudy":
    case "Overcast":
    case "Light showers of ice pellets":
    case "Moderate or heavy showers of ice pellets":
      return "assets/images/Moon cloud fast wind.png";
      
    case "Patchy rain possible":
    case "Patchy snow possible":
    case "Patchy sleet possible":
    case "Patchy freezing drizzle possible":
    case "Blowing snow":
    case "Blizzard":
    case "Fog":
    case "Freezing fog":
    case "Patchy light drizzle":
    case "Light drizzle":
    case "Freezing drizzle":
    case "Heavy freezing drizzle":
    case "Light snow showers":
    case "Moderate or heavy snow showers":
      return "assets/images/Moon cloud mid rain.png";
      
    case "Thundery outbreaks possible":
    case "Moderate or heavy rain shower":
    case "Torrential rain shower":
    case "Mist":
    case "Ice pellets":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
      return "assets/images/Tornado.png";
      
    case "Patchy light rain":
    case "Light rain":
    case "Moderate rain at times":
    case "Moderate rain":
    case "Heavy rain at times":
    case "Heavy rain":
    case "Light freezing rain":
    case "Moderate or heavy freezing rain":
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
    case "Sunny":
      return "assets/images/Sun cloud mid rain.png";
      
    case "Patchy light snow":
    case "Light snow":
    case "Patchy moderate snow":
    case "Moderate snow":
    case "Patchy heavy snow":
    case "Heavy snow":
    case "Light rain shower":
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
      return "assets/images/Sun cloud fast wind.png";
      
    default:
      return "assets/images/Sun cloud mid rain.png";
  }
}