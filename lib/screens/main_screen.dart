import 'package:bac_note/components/subjects.dart';
import 'package:bac_note/screens/who_are_we_screen.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/subject.dart';

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
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Provider.of<Subjects>(context).subjects.length,
              itemBuilder: ((context, index) => SubjectNoteWidget(
                  subject: Provider.of<Subjects>(context).subjects[index])),
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 28),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Center(
                    child: Text(
                  'Calculer',
                  style: TextStyle(
                      fontFamily: 'Inconsolata',
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
