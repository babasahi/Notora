import 'package:bac_note/data/notes.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double moyenne = (subjects[0].note * 8 +
            subjects[1].note * 7 +
            subjects[2].note * 6 +
            subjects[3].note * 3 +
            subjects[4].note * 3 +
            subjects[5].note * 2 +
            subjects[6].note * 2 +
            subjects[7].note * 1) /
        32;
    final double moyOrientation = (((subjects[0].note * 3) +
                (subjects[1].note * 2) +
                subjects[3].note * 1) +
            moyenne) /
        7;

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
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 90),
              child: Center(
                child: Text(
                  'Moyenne Génerale :',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              height: 220,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Center(
                child: Text(
                  moyenne.toStringAsFixed(3),
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  'Moyenne d\'Orientation :',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              height: 220,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Center(
                child: Text(
                  moyOrientation.toStringAsFixed(3),
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
