import 'package:bac_note/data/data.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class Congratulation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 22, bottom: 12),
      child: Column(
        children: [
          Text(
            'Admis',
            style: kCongratulationLabelStyle,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '🎉',
            style: kEmojiStyle,
          ),
        ],
      ),
    );
  }
}

class Consolation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 22, bottom: 12),
      child: Column(
        children: [
          Text(
            'Non Admis',
            style: kCongratulationLabelStyle,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '💔',
            style: kEmojiStyle,
          ),
        ],
      ),
    );
  }
}

class ResultWidget extends StatelessWidget {
  ResultWidget(
    this.moyenne,
    this.style,
    this.padding,
  );
  final double padding;
  final TextStyle style;
  final double moyenne;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 190,
      width: 340,
      decoration: BoxDecoration(
        color: Colors.orange[400],
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(moyenne.toStringAsFixed(3), style: style),
            Container(
                padding: EdgeInsets.only(top: padding),
                child: Text('/ 20', style: kPercentStyle)),
          ],
        ),
      ),
    );
  }
}

class SubjectPanel extends StatefulWidget {
  SubjectPanel(this.id);
  final int id;
  @override
  _SubjectPanelState createState() => _SubjectPanelState();
}

class _SubjectPanelState extends State<SubjectPanel> {
  Subjects subjects = Subjects();
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
              subjects.notes[widget.id].toString(),
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
                subjects.names[widget.id],
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
              value: subjects.notes[widget.id],
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  subjects.notes[widget.id] = newValue;
                  print(subjects.notes[widget.id]);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
