class MovieModel {
  final String image;
  final String title;

  MovieModel({this.image, this.title});

  String get movieTitle => title;
  String get movieImage => image;

  factory MovieModel.fromJson(dynamic movieData, dynamic movieImage) {
    final title = movieData["title"];
    final image = movieImage["file_path"];

    return MovieModel(
      title: title,
      image: image,
    );
  }
}
