import 'package:bac_note/models/subject.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class SubjectNoteWidget extends StatefulWidget {
  final Subject subject;
  SubjectNoteWidget({required this.subject});
  @override
  _SubjectNoteWidgetState createState() => _SubjectNoteWidgetState();
}

class _SubjectNoteWidgetState extends State<SubjectNoteWidget> {
  @override
  void initState() {
    widget.subject.note = 10;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48), topRight: Radius.circular(48)),
            ),
            child: Center(
              child: Text(
                widget.subject.note.toString(),
                style: kPercentStyle.copyWith(
                    color: widget.subject.note < 10
                        ? Colors.redAccent
                        : Colors.greenAccent),
              ),
            ),
          ),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(18),
                topLeft: Radius.circular(18),
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
              color: Colors.grey[200],
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
                  widget.subject.note = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
