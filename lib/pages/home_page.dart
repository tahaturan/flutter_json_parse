import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_parse/model/messages.dart';

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

    var message = Messages.fromJson(jsonObject);

    debugPrint("Mesaj kodu : ${message.messageCode} ");
    debugPrint("Mesaj icerik : ${message.messageContent} ");
  }

  @override
  void initState() {
    super.initState();
    messageParse();
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
