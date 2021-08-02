import 'package:bac_note/components/widgets.dart';
import 'package:flutter/material.dart';

class Subject {
  Subject(this.name, this.note);

  double note = 0;
  final String name;
}

List<Subject> subjects = [
  Subject('Sciences Naturelles', 8),
  Subject('Physique et Chimie', 7),
  Subject('Mathématiques', 6),
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
    return Container(
      margin: EdgeInsets.only(bottom: 24, right: 6, left: 6),
      child: Column(
        children: [
          CurrentSubjectValue(subjects[0].note),
          SubjectName(subjects[0].name),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            ),
            child: Slider(
              value: subjects[0].note,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  subjects[0].note = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Physique extends StatefulWidget {
  @override
  _PhysiqueState createState() => _PhysiqueState();
}

class _PhysiqueState extends State<Physique> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24, right: 6, left: 6),
      child: Column(
        children: [
          CurrentSubjectValue(subjects[1].note),
          SubjectName(subjects[1].name),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            ),
            child: Slider(
              value: subjects[1].note,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  subjects[1].note = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Maths extends StatefulWidget {
  @override
  _MathsState createState() => _MathsState();
}

class _MathsState extends State<Maths> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24, right: 6, left: 6),
      child: Column(
        children: [
          CurrentSubjectValue(subjects[2].note),
          SubjectName(subjects[2].name),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            ),
            child: Slider(
              value: subjects[2].note,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  subjects[2].note = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Arabe extends StatefulWidget {
  @override
  _ArabeState createState() => _ArabeState();
}

class _ArabeState extends State<Arabe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24, right: 6, left: 6),
      child: Column(
        children: [
          CurrentSubjectValue(subjects[3].note),
          SubjectName(subjects[3].name),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            ),
            child: Slider(
              value: subjects[3].note,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  subjects[3].note = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class French extends StatefulWidget {
  @override
  _FrenchState createState() => _FrenchState();
}

class _FrenchState extends State<French> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24, right: 6, left: 6),
      child: Column(
        children: [
          CurrentSubjectValue(subjects[4].note),
          SubjectName(subjects[4].name),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            ),
            child: Slider(
              value: subjects[4].note,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  subjects[4].note = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Ir extends StatefulWidget {
  @override
  _IrState createState() => _IrState();
}

class _IrState extends State<Ir> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24, right: 6, left: 6),
      child: Column(
        children: [
          CurrentSubjectValue(subjects[5].note),
          SubjectName(subjects[5].name),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            ),
            child: Slider(
              value: subjects[5].note,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  subjects[5].note = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class English extends StatefulWidget {
  @override
  _EnglishState createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24, right: 6, left: 6),
      child: Column(
        children: [
          CurrentSubjectValue(subjects[6].note),
          SubjectName(subjects[6].name),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            ),
            child: Slider(
              value: subjects[6].note,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  subjects[6].note = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Sport extends StatefulWidget {
  @override
  _SportState createState() => _SportState();
}

class _SportState extends State<Sport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24, right: 6, left: 6),
      child: Column(
        children: [
          CurrentSubjectValue(subjects[7].note),
          SubjectName(subjects[7].name),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            ),
            child: Slider(
              value: subjects[7].note,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  subjects[7].note = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
