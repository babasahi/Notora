import 'package:bac_note/data/data.dart';

class Calcul {
  Subjects subjects = Subjects();
  double calculeMoyenn() {
    double result = (subjects.notes[0] * 8 +
            subjects.notes[0] * 7 +
            subjects.notes[0] * 6 +
            subjects.notes[0] * 3 +
            subjects.notes[0] * 3 +
            subjects.notes[0] * 2 +
            subjects.notes[0] * 2 +
            subjects.notes[0] * 1) /
        32;
    print(result);
    return result;
  }

  double calculOrient() {
    double result = ((subjects.notes[0] * 3) +
            (subjects.notes[0] * 2) +
            (subjects.notes[0]) +
            calculeMoyenn()) /
        7;
    return result;
  }
}
