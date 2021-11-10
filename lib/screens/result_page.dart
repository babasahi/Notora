import 'package:bac_note/screens/main_screen.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late double moyenne;

  late double moyOrient;

  @override
  void initState() {
    moyenne = (sciences * 8 +
            physics * 7 +
            maths * 6 +
            insrel * 2 +
            arabic * 3 +
            french * 3 +
            english * 2 +
            sport) /
        32;

    moyOrient = (sciences * 3 + physics * 2 + maths + moyenne) / 7;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 36,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(moyenne.toString()),
            Text(moyOrient.toString()),
          ],
        ),
      ),
    );
  }
}
