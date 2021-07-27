import 'package:bac_note/screens/notes.dart';

class Calcul {
  double calculeMoyenn() {
    double result = (subjects[0].note * 8 +
            subjects[1].note * 7 +
            subjects[2].note * 6 +
            subjects[3].note * 3 +
            subjects[4].note * 3 +
            subjects[5].note * 2 +
            subjects[6].note * 2 +
            subjects[7].note * 1) /
        32;
    return result;
  }

  double calculOrient() {
    double result = ((subjects[0].note * 3) +
            (subjects[1].note * 2) +
            (subjects[2].note) +
            calculeMoyenn()) /
        7;
    return result;
  }
}
