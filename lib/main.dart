import 'package:bac_note/models/subject.dart';
import 'package:bac_note/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<Subjects>(
      create: (context) => Subjects(subjects: [
        Subject(name: 'Sciences Naturelles', coefficient: 8, note: 10),
        Subject(name: 'Sciences Physiques', coefficient: 7, note: 10),
        Subject(name: 'Mathematiques', coefficient: 6, note: 10),
        Subject(name: 'Francais', coefficient: 3, note: 10),
        Subject(name: 'Arabe', coefficient: 3, note: 10),
        Subject(name: 'Anglais', coefficient: 2, note: 10),
        Subject(name: 'Instruction Religieuse', coefficient: 2, note: 10),
        Subject(name: 'Education Physique', coefficient: 1, note: 10)
      ]),
      builder: (context, child) => MaterialApp(
        title: 'BacNote',
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
