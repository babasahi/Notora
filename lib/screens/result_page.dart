import 'package:bac_note/components/calcul.dart';
import 'package:bac_note/screens/notes.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Calcul calcul = Calcul();
    final double moyenne = calcul.calculeMoyenn();
    final double moyOrientation = calcul.calculOrient();
    List<Container> presentation = [];
    if (moyenne>=8) {
      presentation.add()
    } else {
    }

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
              child: Column(
                children: [
                presentation[0],
                presentation[1],
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text('Moyenne Génerale ', style: kMainResultLabelStyle),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              height: 220,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Center(
                child:
                    Text(moyenne.toStringAsFixed(3), style: kMainResultStyle),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text('Moyenne d\'Orientation ',
                    style: kSecondaryResultLabelStyle),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              height: 220,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Center(
                child: Text(moyOrientation.toStringAsFixed(3),
                    style: kSecondaryResultStyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
