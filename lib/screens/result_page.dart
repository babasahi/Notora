import 'dart:ffi';

import 'package:bac_note/components/result_widget.dart';
import 'package:bac_note/models/subject.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatefulWidget {
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String getOrientationGrade(List<Subject> subjects) {
    double result =
        (subjects[0].note * 3 + subjects[1].note * 2 + subjects[2].note) / 7;
    return result.toString();
  }

  String getAverageGrade(List<Subject> subjects) {
    double result = (subjects[0].note * subjects[0].coefficient +
            subjects[1].note * subjects[1].coefficient +
            subjects[2].note * subjects[2].coefficient +
            subjects[3].note * subjects[3].coefficient +
            subjects[4].note * subjects[4].coefficient +
            subjects[5].note * subjects[5].coefficient +
            subjects[6].note * subjects[6].coefficient) /
        32;
    return result.toStringAsFixed(3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 36,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ResultWidget(
                grade: getAverageGrade(Provider.of<Subjects>(context).subjects))
          ],
        ),
      ),
    );
  }
}
