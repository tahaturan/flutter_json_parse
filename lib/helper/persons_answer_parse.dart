import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_parse/model/persons_answer_karisik_veri.dart';
import 'package:flutter_json_parse/model/persons_tek_array.dart';

void personAnswerParse() {
  String strData =
      '{"success":1,"kisiler":[{"kisi_id":"1","kisi_ad":"Ahmet","kisi_tel":"12312312"},'
      '{"kisi_id":"2","kisi_ad":"Mehmet","kisi_tel":"912318212"}]}';

  var jsonData = json.decode(strData);

  var personAnswer = PersonsAnswer.fromJson(jsonData);

  debugPrint("Success: ${personAnswer.success}");

  List<Persons> personList = personAnswer.personsList;

  for (var person in personList) {
    debugPrint("***********************");
    debugPrint("Kisi Id: ${person.id}");
    debugPrint("Kisi Adi: ${person.name}");
    debugPrint("Kisi Telefon: ${person.phone}");
  }
}
