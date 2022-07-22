import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class secondscreen extends StatefulWidget {

  @override
  _secondscreenState createState() => _secondscreenState();
}


class _secondscreenState extends State<secondscreen> {
  FlutterTts flutterTts = FlutterTts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Button'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () async {
                  flutterTts.setLanguage("de-DE");
                 flutterTts.speak("Nehmen Sie die dritte Tür rechts.");
                },
                color: Colors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "Click Me 1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            
          
            OutlineButton(
              shape: StadiumBorder(),
              onPressed: () async {
                flutterTts.setLanguage("de-DE");
                 flutterTts.speak("Der Aufzug befindet sich in 50 Metern auf der rechten Seite.");
                },
              borderSide: const BorderSide(
                color: Colors.amber,
                style: BorderStyle.solid,
                width: 3,
              ),
              child: const Text(
                "Click Me 2",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            RaisedButton(
              onPressed: () async {
                 flutterTts.setLanguage("de-DE");
                 flutterTts.speak("Sie haben Ihr Ziel erreicht.");
                },
              padding: EdgeInsets.zero,
              shape: StadiumBorder(),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
                  shape: StadiumBorder(),
                ),
                child: const Text(
                  "Click Me3",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),         
          ],
        ),
      ),
    );
  }
}