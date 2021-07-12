import 'package:bac_note/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bac_note/data/notes.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'BAC NOTE',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 34,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Text(
                    'Calculez votre moyenne génerale',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
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
                  margin:
                      EdgeInsets.only(top: 30, bottom: 50, left: 30, right: 30),
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
      ),
    );
  }
}