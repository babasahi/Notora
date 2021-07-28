import 'package:bac_note/screens/notes.dart';

class Calcul {
  Model model = Model();
  double calculeMoyenn() {
    double result = (model.sciences.note * 8 +
            model.physics.note * 7 +
            model.mathss.note * 6 +
            model.arabic.note * 3 +
            model.french.note * 3 +
            model.ir.note * 2 +
            model.english.note * 2 +
            model.sport.note * 1) /
        32;
    return result;
  }

  double calculOrient() {
    double result = ((model.sciences.note * 3) +
            (model.physics.note * 2) +
            (model.mathss.note) +
            calculeMoyenn()) /
        7;
    return result;
  }
}
