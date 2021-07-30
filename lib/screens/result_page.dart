import 'package:bac_note/components/calculator.dart';
import 'package:bac_note/components/result_widget.dart';
import 'package:bac_note/components/result_remark_widget.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Calculator calcul = Calculator();
    List<Widget> presentation = [];
    if (calcul.calculeMoyenn() >= 8) {
      presentation.add(Congratulation());
    } else {
      presentation.add(Consolation());
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
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Column(
                    children: [
                      presentation[0],
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                ),
                ResultWidget(calcul.calculeMoyenn(), kMainResultStyle, 40),
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
                  child: ResultWidget(
                      calcul.calculOrient(), kSecondaryResultStyle, 24),
                ),
              ],
            ),
            Container(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
