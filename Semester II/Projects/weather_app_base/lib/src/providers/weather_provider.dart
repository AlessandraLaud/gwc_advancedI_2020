import 'package:flutter/foundation.dart';
import 'package:weatherapp/src/models/weather_model.dart';
import 'package:weatherapp/src/repository/weather_repository.dart';

class WeatherProvider with ChangeNotifier {
  bool _isLoading;
  bool _locationSet;
  WeatherModel _weather;
  WeatherRepository _repository;
  int _locationID;
  String _errorMessage;

  WeatherProvider({
    @required WeatherRepository repository,
  })  : _repository = repository,
        _isLoading = false,
        _locationSet = false;

  bool get isLoading => _isLoading;
  bool get locationSet => _locationSet;
  WeatherModel get weather => _weather;
  String get errorMessage => _errorMessage;

  reset() {
    _isLoading = false;
    _locationSet = false;
    _weather = null;
    _locationID = null;
    _errorMessage = null;
    notifyListeners();
  }

  setLocation(String cityName) async {
    try {
      _locationID = await _repository.getLocationIDByCity(cityName);
      _locationSet = true;
    } on GetLocationIDFailure catch (e) {
      _errorMessage = e.msg;
    }
    notifyListeners();
  }

  refresh() async {
    _isLoading = true;
    notifyListeners();
    _weather = await _repository.getWeather(_locationID);
    _isLoading = false;
    notifyListeners();
  }
}
