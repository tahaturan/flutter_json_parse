import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_parse/model/persons_tek_array.dart';

void personsParse() {
  String strData =
      '{"kisiler":[{"kisi_id":"1","kisi_ad":"Ahmet","kisi_tel":"12312312"}'
      ',{"kisi_id":"2","kisi_ad":"Mehmet","kisi_tel":"912318212"}]}';

  var jsonData = json.decode(strData);
  //*String verimizi Json yapisina donusturuyoruz

  var jsonArray = jsonData["kisiler"] as List;
  //*json veri icindeki parse etmek istedigimiz alani alabilmek icin ismi ile erisiyoruz
  //*bu yapi json Array dir ve json icindeki diziyi alabiliriz ve bir liste oldugunu da belittik

  List<Persons> personList = jsonArray
      .map((jsonArrayObject) => Persons.fromJson(jsonArrayObject))
      .toList();
  //*json icindeki Array i persons nesnelerine donusturup liste haline getirdik

  for (var person in personList) {
    debugPrint("***********************");
    debugPrint("Kisi Id: ${person.id}");
    debugPrint("Kisi Adi: ${person.name}");
    debugPrint("Kisi Telefon: ${person.phone}");
  }
}
