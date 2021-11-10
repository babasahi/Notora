import 'package:flutter/material.dart';

class SubjectNoteWidget extends StatefulWidget {
  @override
  _SubjectNoteWidgetState createState() => _SubjectNoteWidgetState();
}

class _SubjectNoteWidgetState extends State<SubjectNoteWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24, right: 6, left: 6),
      child: Column(
        children: [
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
              value: 20,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
