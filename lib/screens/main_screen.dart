import 'package:bac_note/components/subjects.dart';
import 'package:bac_note/screens/result_page.dart';
import 'package:bac_note/screens/who_are_we_screen.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'BacNote',
          style: kLogoStyle,
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
                  builder: (context) => AboutPage(),
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
        child: ListView.builder(
          children: [
            SubjectNoteWidget(
              name: 'Sciences Naturelles ',
              note: sciences,
            ),
            SubjectNoteWidget(
              name: 'Physique et Chimie',
              note: physics,
            ),
            SubjectNoteWidget(
              name: 'Mathématiques ',
              note: maths,
            ),
            SubjectNoteWidget(
              name: 'Instruction Réligieuse ',
              note: insrel,
            ),
            SubjectNoteWidget(
              name: 'Langue Arabe',
              note: arabic,
            ),
            SubjectNoteWidget(
              name: 'Langue Francais',
              note: french,
            ),
            SubjectNoteWidget(
              name: 'Langue Anglais ',
              note: english,
            ),
            SubjectNoteWidget(
              name: 'Sport',
              note: sport,
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
    );
  }
}
