import 'package:flutter/material.dart';
import 'dart:math';
// import 'package:http/http.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Ask Me Anything',
          ),
          backgroundColor: Colors.blue,
        ),
        body: TellMe(),
      ),
    ),
  );
}

class TellMe extends StatefulWidget {
  TellMe({Key? key}) : super(key: key);

  @override
  _TellMeState createState() => _TellMeState();
}

class _TellMeState extends State<TellMe> {
  int random = Random().nextInt(5) + 1;
  ChangeTell() {
    setState(() {
      random = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: (ChangeTell),
          child: Image.asset('images/ball$random.png'),
        ),
      ),
    );
  }
}
