import 'package:bac_note/data/data.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class SubjectCard extends StatefulWidget {
  SubjectCard(this.subject);
  final Subject subject;
  @override
  _SubjectPanelState createState() => _SubjectPanelState();
}

class _SubjectPanelState extends State<SubjectCard> {
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
              widget.subject.note.toString(),
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
                widget.subject.name,
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
              value: widget.subject.note,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  print(newValue);
                  widget.subject.note = newValue;
                  print(widget.subject.note);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
