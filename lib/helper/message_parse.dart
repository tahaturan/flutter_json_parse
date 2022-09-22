import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_parse/model/messages_tek_nesne.dart';

void messageParse() {
  String strData =
      '{"mesajlar" : {"mesaj_kod" : 1,"mesaj_icerik" : "basarili" } }';

  var jsonData = json.decode(strData);
  //*bu sekilde yuakridaki string verimizi json formatina donustirmus olduk

  var jsonObject = jsonData["mesajlar"];
  //*json veri icindeki parse etmek istedigimiz alani alabilmek icin ismi ile erisiyoruz

  var message = Messages.fromJson(jsonObject);
  //*bu yapi json nesnesidir ve sinifimizin parse metodu icin hazir haldedir
  //*bu yapiyi metodumuza aktaririrz ve bize parse edilmis sononucu verir

  debugPrint("Mesaj kodu : ${message.messageCode} ");
  debugPrint("Mesaj icerik : ${message.messageContent} ");
}
