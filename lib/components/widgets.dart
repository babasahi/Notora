import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class SubjectName extends StatelessWidget {
  SubjectName(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 360,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Center(
        child: Text(
          name,
          style: kSubjectNameStyle,
        ),
      ),
    );
  }
}

class CurrentSubjectValue extends StatelessWidget {
  CurrentSubjectValue(this.note);
  final double note;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Center(
          child: Text(
        note.toString(),
        style: TextStyle(
          fontSize: 19,
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
