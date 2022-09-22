import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_parse/model/messages.dart';
import 'package:flutter_json_parse/model/persons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  void personsParse() {
    String strData =
        '{"kisiler":[{"kisi_id":"1","kisi_ad":"Ahmet","kisi_tel":"12312312"}'
        ',{"kisi_id":"2","kisi_ad":"Mehmet","kisi_tel":"912318212"}]}';

    var jsonData = json.decode(strData);

    var jsonArray = jsonData["kisiler"] as List;

    List<Persons> personList = jsonArray
        .map((jsonArrayObject) => Persons.fromJson(jsonArrayObject))
        .toList();

    for (var person in personList) {
      debugPrint("***********************");
      debugPrint("Kisi Id: ${person.id}");
      debugPrint("Kisi Adi: ${person.name}");
      debugPrint("Kisi Telefon: ${person.phone}");
    }
  }

  @override
  void initState() {
    super.initState();
    // messageParse();
    personsParse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnaSayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Merhaba"),
          ],
        ),
      ),
    );
  }
}
