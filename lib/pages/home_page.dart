import 'package:flutter/material.dart';
import 'package:flutter_json_parse/helper/movie_parse.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // messageParse();
    // personsParse();
    // personAnswerParse();
    movieAnswerParse();
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
