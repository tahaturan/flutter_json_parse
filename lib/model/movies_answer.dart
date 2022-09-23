import 'package:flutter_json_parse/model/movies.dart';

class MoviesAnswer {
  int success;
  List<Movies> movieList;
  MoviesAnswer({
    required this.success,
    required this.movieList,
  });

  factory MoviesAnswer.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["filmler"] as List;
    List<Movies> movieList = jsonArray
        .map((jsonArrayObject) => Movies.fromJson(jsonArrayObject))
        .toList();

    return MoviesAnswer(success: json["success"] as int, movieList: movieList);
  }
}
