import 'package:bac_note/data/data.dart';

class Calculator {
  Data data = Data();
  double calculeMoyenn() {
    double result = (data.sciences.note * 8 +
            data.physics.note * 7 +
            data.maths.note * 6 +
            data.arabic.note * 3 +
            data.french.note * 3 +
            data.ir.note * 2 +
            data.english.note * 2 +
            data.sport.note * 1) /
        32;
    print(result);
    return result;
  }

  double calculOrient() {
    double result = ((data.sciences.note * 3) +
            (data.physics.note * 2) +
            (data.maths.note) +
            calculeMoyenn()) /
        7;
    return result;
  }
}
