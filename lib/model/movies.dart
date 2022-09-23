// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_json_parse/model/categories.dart';
import 'package:flutter_json_parse/model/director.dart';

class Movies {
  String movieId;
  String movieName;
  String movieYear;
  String movieImage;
  Categories category;
  Director director;
  Movies({
    required this.movieId,
    required this.movieName,
    required this.movieYear,
    required this.movieImage,
    required this.category,
    required this.director,
  });

  factory Movies.fromJson(Map<String, dynamic> json) {
    var categoryJson = Categories.fromJson(json["kategori"]);
    var directorJson = Director.fromJson(json["yonetmen"]);

    return Movies(
        movieId: json["film_ad"] as String,
        movieName: json["film_ad"] as String,
        movieYear: json["film_yil"] as String,
        movieImage: json["film_resim"] as String,
        category: categoryJson,
        director: directorJson);
  }
}
