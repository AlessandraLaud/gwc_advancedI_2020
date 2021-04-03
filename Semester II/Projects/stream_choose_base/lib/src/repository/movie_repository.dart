import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stream_choose/src/models/movie_model.dart';

class GetMovieFailure implements Exception {
  final String msg = "There was a problem loading the movie :(";
}

class MovieRepository {
  static const baseUrl = "https://api.themoviedb.org";
  static const apiKey = "4c9ccd51f6c7f90dce3926307eeb3c02";
  static const companyId = "2";
  final http.Client httpClient;

  MovieRepository({
    @required this.httpClient,
  }) : assert(httpClient != null);

  Future<MovieModel> getRandomMovie() async {
    var random = new Random();
    final url =
        "$baseUrl/3/discover/movie?api_key=$apiKey&language=en-US&include_adult=false&include_video=true&with_companies=$companyId";

    final movieDataResponse = await this.httpClient.get(url);

    final movieData = jsonDecode(movieDataResponse.body);
    final randomMovieIndex = random.nextInt(movieData["results"].length);
    final randomMovie = movieData["results"][randomMovieIndex];
    final movieId = randomMovie["id"];

    final movieImagesResponse = await this.httpClient.get(
        "https://api.themoviedb.org/3/movie/$movieId/images?api_key=$apiKey");

    final imageData = jsonDecode(movieImagesResponse.body);
    final movieImage = imageData["posters"].first;

    return MovieModel.fromJson(randomMovie, movieImage);
  }
}
