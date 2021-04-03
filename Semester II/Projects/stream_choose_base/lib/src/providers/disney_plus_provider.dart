import 'package:flutter/foundation.dart';
import 'package:stream_choose/src/models/movie_model.dart';
import 'package:stream_choose/src/repository/movie_repository.dart';

class DisneyPlusProvider with ChangeNotifier {
  bool _isLoading;
  bool _movieSet;
  MovieModel _movie;
  String _errorMessage;
  MovieRepository _repository;

  DisneyPlusProvider({
    @required MovieRepository repository,
  })  : _repository = repository,
        _isLoading = false,
        _movieSet = false;

  bool get isLoading => _isLoading;
  bool get isMovieSet => _movieSet;
  MovieModel get movie => _movie;
  String get errorMessage => _errorMessage;
  setMovie() async {
    try {
      _movie = await _repository.getRandomMovie();
      _movieSet = true;
    } on GetMovieFailure catch (e) {
      _errorMessage = e.msg;
    }
    notifyListeners();
  }
}
