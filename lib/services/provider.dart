import 'package:bac_note/models/subject.dart';
import 'package:flutter/foundation.dart';

class Subjects extends ChangeNotifier {
  List<Subject> subjects = [];

  Subjects({required this.subjects});

  double getOrientationGrade() {
    double grade = getAverageGrade();
    double result = (subjects[0].note * 3 +
            subjects[1].note * 2 +
            subjects[2].note +
            grade) /
        7;
    return result;
  }

  double getAverageGrade() {
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
}
