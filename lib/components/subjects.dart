import 'package:bac_note/components/subject_card.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class Subject {
  Subject(this.name, this.note);

  double note = 0;
  final String name;
}

List<Subject> subjects = [
  Subject('Sciences Naturelles', 8),
  Subject('Physique et Chimie', 7),
  Subject('Mathématiques', 86),
  Subject('Arabe', 3),
  Subject('Francais', 3),
  Subject('Instruction Réligieuse', 2),
  Subject('Anglais', 2),
  Subject('Education Physique', 1),
];

class Sciences extends StatefulWidget {
  @override
  _SciencesState createState() => _SciencesState();
}

class _SciencesState extends State<Sciences> {
  @override
  Widget build(BuildContext context) {
    return SubjectCard(subjects[0].note, 'Sciences Naturelles');
  }
}

class Physique extends StatefulWidget {
  @override
  _PhysiqueState createState() => _PhysiqueState();
}

class _PhysiqueState extends State<Physique> {
  @override
  Widget build(BuildContext context) {
    return SubjectCard(subjects[1].note, 'Physique et Chimie');
  }
}

class Maths extends StatefulWidget {
  @override
  _MathsState createState() => _MathsState();
}

class _MathsState extends State<Maths> {
  @override
  Widget build(BuildContext context) {
    return SubjectCard(subjects[3].note, 'Mathématiques');
  }
}

class Arabe extends StatefulWidget {
  @override
  _ArabeState createState() => _ArabeState();
}

class _ArabeState extends State<Arabe> {
  @override
  Widget build(BuildContext context) {
    return SubjectCard(subjects[4].note, 'Arabe');
  }
}

class French extends StatefulWidget {
  @override
  _FrenchState createState() => _FrenchState();
}

class _FrenchState extends State<French> {
  @override
  Widget build(BuildContext context) {
    return SubjectCard(subjects[5].note, 'Francais');
  }
}

class Ir extends StatefulWidget {
  @override
  _IrState createState() => _IrState();
}

class _IrState extends State<Ir> {
  @override
  Widget build(BuildContext context) {
    return SubjectCard(subjects[6].note, 'Instruction Réligieuse');
  }
}

class English extends StatefulWidget {
  @override
  _EnglishState createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  @override
  Widget build(BuildContext context) {
    return SubjectCard(subjects[7].note, 'Anglais');
  }
}

class Sport extends StatefulWidget {
  @override
  _SportState createState() => _SportState();
}

class _SportState extends State<Sport> {
  @override
  Widget build(BuildContext context) {
    return SubjectCard(subjects[8].note, 'Sport');
  }
}
