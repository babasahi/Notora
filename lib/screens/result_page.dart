import 'package:bac_note/components/result_widget.dart';
import 'package:bac_note/components/result_remark_widget.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double moyenn = 32;
  @override
  Widget build(BuildContext context) {
    final moyOrient = 7;

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
                  child: ResultWidget(17, kSecondaryResultStyle, 24,
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
