import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weatherapp/src/models/weather_model.dart';

class GetLocationIDFailure implements Exception {
  final String msg = "There was a problem loading the location ID";
}

class GetWeatherFailure implements Exception {
  final String msg = "There was a problem loading the weather";
}

class WeatherRepository {
  static const baseUrl = "https://www.metaweather.com";
  final http.Client httpClient;

  WeatherRepository({
    @required this.httpClient,
  }) : assert(httpClient != null);

  Future<int> getLocationIDByCity(String cityName) async {
    final url = "$baseUrl/api/location/search/?query=$cityName";
    final response = await this.httpClient.get(url);

    if (response.statusCode != 200) {
      throw GetLocationIDFailure();
    }

    return (jsonDecode(response.body) as List).first["woeid"];
  }

  Future<WeatherModel> getWeather(int locationID) async {
    final url = "$baseUrl/api/location/$locationID";
    final response = await this.httpClient.get(url);

    if (response.statusCode != 200) {
      throw GetWeatherFailure();
    }

    return WeatherModel.fromJson(jsonDecode(response.body));
  }
}
