// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_json_parse/model/persons_tek_array.dart';

class PersonsAnswer {
  int success;
  List<Persons> personsList;
  PersonsAnswer({
    required this.success,
    required this.personsList,
  });

  factory PersonsAnswer.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["kisiler"] as List;

    List<Persons> personsList = jsonArray
        .map((jsonArrayObject) => Persons.fromJson(jsonArrayObject))
        .toList();

    return PersonsAnswer(
        success: json["success"] as int, personsList: personsList);
  }
}
