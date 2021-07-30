import 'package:bac_note/components/subject_card.dart';
import 'package:bac_note/data/data.dart';
import 'package:bac_note/screens/result_page.dart';
import 'package:bac_note/screens/who_are_we_screen.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BacNote',
      debugShowCheckedModeBanner: false,
      home: BacNote(),
    );
  }
}

class BacNote extends StatefulWidget {
  @override
  _BacNoteState createState() => _BacNoteState();
}

class _BacNoteState extends State<BacNote> {
  Data data = Data();

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
          /* Image(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.contain,
          ),*/
          Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SubjectCard('Sciences Naturelles', data.sciences),
                    SubjectCard('Physique et Chimie', data.physics),
                    SubjectCard('Mathématiques', data.maths),
                    SubjectCard('Arabe', data.arabic),
                    SubjectCard('Francais', data.french),
                    SubjectCard('Instruction Réligieuse', data.ir),
                    SubjectCard('Anglais', data.english),
                    SubjectCard('Education Physique', data.sport),
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
