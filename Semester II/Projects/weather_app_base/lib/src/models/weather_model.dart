import "package:equatable/equatable.dart";

enum WeatherCondition {
  snow,
  sleet,
  hail,
  thunderstorm,
  heavyRain,
  lightRain,
  showers,
  heavyCloud,
  lightCloud,
  clear,
  unknown
}

class WeatherModel extends Equatable {
  final WeatherCondition condition;
  final String conditionName;
  final double minTemp;
  final double temp;
  final double maxTemp;
  final int locationID;
  final String locationName;
  final String created;
  final DateTime lastUpdated;

  WeatherModel({
    this.condition,
    this.conditionName,
    this.minTemp,
    this.temp,
    this.maxTemp,
    this.locationID,
    this.locationName,
    this.created,
    this.lastUpdated,
  });

  factory WeatherModel.fromJson(dynamic json) {
    final latestUpdate = json["consolidated_weather"][0];
    final temp = (latestUpdate["the_temp"] * 9 / 5) + 32;
    final minTemp = (latestUpdate["min_temp"] * 9 / 5) + 32;
    final maxTemp = (latestUpdate["max_temp"] * 9 / 5) + 32;
    return WeatherModel(
      condition:
          _mapStringToWeatherCondition(latestUpdate["weather_state_abbr"]),
      conditionName: latestUpdate["weather_state_name"],
      minTemp: minTemp as double,
      temp: temp as double,
      maxTemp: maxTemp as double,
      locationID: json["woeid"] as int,
      created: latestUpdate["created"],
      lastUpdated: DateTime.now(),
      locationName: json["title"],
    );
  }

  static WeatherCondition _mapStringToWeatherCondition(String input) {
    WeatherCondition state;
    switch (input) {
      case "sn":
        state = WeatherCondition.snow;
        break;
      case "sl":
        state = WeatherCondition.sleet;
        break;
      case "h":
        state = WeatherCondition.hail;
        break;
      case "t":
        state = WeatherCondition.thunderstorm;
        break;
      case "hr":
        state = WeatherCondition.heavyRain;
        break;
      case "lr":
        state = WeatherCondition.lightRain;
        break;
      case "s":
        state = WeatherCondition.showers;
        break;
      case "hc":
        state = WeatherCondition.heavyCloud;
        break;
      case "lc":
        state = WeatherCondition.lightCloud;
        break;
      case "c":
        state = WeatherCondition.clear;
        break;
      default:
        state = WeatherCondition.unknown;
    }
    return state;
  }

  @override
  List<Object> get props => [
        condition,
        conditionName,
        minTemp,
        temp,
        maxTemp,
        locationID,
        created,
        lastUpdated,
        locationName,
      ];
}
