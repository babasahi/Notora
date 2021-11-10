import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class SubjectNoteWidget extends StatefulWidget {
  final String name;
  double note;
  SubjectNoteWidget({required this.name, required this.note});
  @override
  _SubjectNoteWidgetState createState() => _SubjectNoteWidgetState();
}

class _SubjectNoteWidgetState extends State<SubjectNoteWidget> {
  late double noteValue;

  @override
  void initState() {
    noteValue = 10;
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
                noteValue.toString(),
                style: kPercentStyle.copyWith(
                    color:
                        noteValue < 10 ? Colors.redAccent : Colors.greenAccent),
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
                widget.name,
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
              value: noteValue,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  noteValue = newValue;
                  widget.note = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
