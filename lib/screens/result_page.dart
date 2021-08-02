import 'package:bac_note/components/result_widget.dart';
import 'package:bac_note/components/result_remark_widget.dart';
import 'package:bac_note/components/subjects.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double moyenn = (subjects[0].note * 8 +
          subjects[1].note * 7 +
          subjects[2].note * 6 +
          subjects[3].note * 3 +
          subjects[4].note * 3 +
          subjects[5].note * 2 +
          subjects[6].note * 2 +
          subjects[7].note) /
      32;
  @override
  Widget build(BuildContext context) {
    final moyOrient = (subjects[0].note * 3 +
            subjects[1].note * 2 +
            subjects[2].note +
            moyenn) /
        7;

    List<Widget> presentation = [];
    if (moyenn >= 8) {
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
                  child: moyenn >= 8 ? Congratulation() : Consolation(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                ),
                ResultWidget(moyenn, kMainResultStyle, 40,
                    moyenn >= 8 ? Colors.green : Colors.orange),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  child: ResultWidget(moyOrient, kSecondaryResultStyle, 24,
                      moyenn >= 8 ? Colors.green : Colors.orange),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text('Moyenne d\'Orientation ',
                        style: kSecondaryResultLabelStyle),
                  ),
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
