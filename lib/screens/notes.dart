import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class Subject {
  Subject(this.note, this.name, this.coefficient);
  int coefficient;
  double note = 0;
  final String name;
}

List<Subject> subjects = [
  Subject(0, 'Sciences Naturelles', 8),
  Subject(0, 'Physique et Chimie', 7),
  Subject(0, 'Mathématiques', 86),
  Subject(0, 'Arabe', 3),
  Subject(0, 'Francais', 3),
  Subject(0, 'Instruction Réligieuse', 2),
  Subject(0, 'Anglais', 2),
  Subject(0, 'Education Physique', 1),
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
          Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Center(
                child: Text(
              subjects[0].note.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            height: 55,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(
                subjects[0].name,
                style: kSubjectNameStyle,
              ),
            ),
          ),
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
          Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Center(
                child: Text(
              subjects[1].note.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            height: 55,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(subjects[1].name, style: kSubjectNameStyle),
            ),
          ),
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
          Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Center(
                child: Text(
              subjects[2].note.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            height: 55,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(subjects[2].name, style: kSubjectNameStyle),
            ),
          ),
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
          Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Center(
                child: Text(
              subjects[3].note.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            height: 55,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(subjects[3].name, style: kSubjectNameStyle),
            ),
          ),
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
          Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Center(
                child: Text(
              subjects[4].note.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            height: 55,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(subjects[4].name, style: kSubjectNameStyle),
            ),
          ),
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
          Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Center(
                child: Text(
              subjects[5].note.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            height: 55,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(subjects[5].name, style: kSubjectNameStyle),
            ),
          ),
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
          Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Center(
                child: Text(
              subjects[6].note.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            height: 55,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(subjects[6].name, style: kSubjectNameStyle),
            ),
          ),
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
          Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Center(
                child: Text(
              subjects[7].note.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            height: 55,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(subjects[7].name, style: kSubjectNameStyle),
            ),
          ),
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
