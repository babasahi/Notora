import 'package:bac_note/components/result_widget.dart';
import 'package:bac_note/models/subject.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatefulWidget {
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double getOrientationGrade(List<Subject> subjects) {
    double grade = getAverageGrade(subjects);
    double result = (subjects[0].note * 3 +
            subjects[1].note * 2 +
            subjects[2].note +
            grade) /
        7;
    return result;
  }

  double getAverageGrade(List<Subject> subjects) {
    for (var subject in subjects) {
      print('this is subject :' + subject.coefficient.toString());
    }
    double result = (subjects[0].note * subjects[0].coefficient +
            subjects[1].note * subjects[1].coefficient +
            subjects[2].note * subjects[2].coefficient +
            subjects[3].note * subjects[3].coefficient +
            subjects[4].note * subjects[4].coefficient +
            subjects[5].note * subjects[5].coefficient +
            subjects[6].note * subjects[6].coefficient +
            subjects[7].note * subjects[7].coefficient) /
        32;
    return result;
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResultWidget(
              grade: getAverageGrade(Provider.of<Subjects>(context).subjects)),
          ResultWidget(
              grade:
                  getOrientationGrade(Provider.of<Subjects>(context).subjects))
        ],
      ),
    );
  }
}
