import 'package:bac_note/components/subjects.dart';
import 'package:bac_note/screens/result_page.dart';
import 'package:bac_note/screens/who_are_we_screen.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class BacNote extends StatefulWidget {
  @override
  _BacNoteState createState() => _BacNoteState();
}

class _BacNoteState extends State<BacNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: SizedBox(
          width: 5,
        ),
        title: Center(
          child: Text(
            'BacNote',
            style: kLogoStyle,
          ),
        ),
        actions: [
          GestureDetector(
            child: Icon(
              Icons.info,
              color: Colors.black,
              size: 32,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WhoAreWePage(),
                ),
              );
            },
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(children: [
          Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Sciences(),
                    Physique(),
                    Maths(),
                    Arabe(),
                    French(),
                    Ir(),
                    English(),
                    Sport(),
                  ],
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 30, bottom: 50, left: 30, right: 30),
                    height: 70,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Calculer',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontFamily: 'TitilliumWeb',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
