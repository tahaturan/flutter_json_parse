import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_parse/model/movies.dart';
import 'package:flutter_json_parse/model/movies_answer.dart';

void movieAnswerParse() {
  String strData =
      '{"success":1,"filmler":[{"film_id":"1","film_ad":"Interstellar"'
      ',"film_yil":"2015","film_resim":"interstellar.png",'
      '"kategori":{"kategori_id":"4","kategori_ad":"Bilim Kurgu"},'
      '"yonetmen":{"yonetmen_id":"1","yonetmen_ad":"Christopher Nolan"}},'
      '{"film_id":"3","film_ad":"The Pianist","film_yil":"2002","film_resim":"thepianist.png",'
      '"kategori":{"kategori_id":"3","kategori_ad":"Drama"},'
      '"yonetmen":{"yonetmen_id":"4","yonetmen_ad":"Roman Polanski"}}]}';

  var jsonData = json.decode(strData);
  //*yukaridaki String verimizi Json Formatina donusturduk

  var movieAnswer = MoviesAnswer.fromJson(jsonData);

  int success = movieAnswer.success;
  List<Movies> movieList = movieAnswer.movieList;

  debugPrint("Success: $success");

  for (var movie in movieList) {
    debugPrint("---------------------------------");
    debugPrint("Film Id: ${movie.movieId}");
    debugPrint("Film Adi: ${movie.movieName}");
    debugPrint("Film Yili: ${movie.movieYear}");
    debugPrint("Film Yonetmen Adi: ${movie.director.directorName}");
    debugPrint("Film Kategorisi: ${movie.category.categoryName}");
  }
}
