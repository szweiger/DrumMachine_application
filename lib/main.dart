import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final oynatici = AudioCache();
  void ritim(String ses) {
    oynatici.play('$ses.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('clap1', Colors.grey),
                  ),
                  Expanded(
                    child: buildDrumPad('clap2', Colors.orangeAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('bongo', Colors.blue),
                  ),
                  Expanded(
                    child: buildDrumPad('woo', Colors.yellowAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('oobah', Colors.pink),
                  ),
                  Expanded(
                    child: buildDrumPad('bip', Colors.purple),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('how', Colors.brown),
                  ),
                  Expanded(
                    child: buildDrumPad('crash', Colors.green),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton buildDrumPad(String ses, Color renk) {
    return FlatButton(
      padding: EdgeInsets.all(8),
      onPressed: () {
        ritim(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
