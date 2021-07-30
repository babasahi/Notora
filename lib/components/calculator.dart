import 'package:bac_note/data/data.dart';

class Calculator {
  Data data = Data();

  double calculeMoyenn() {
    double result = (data.sciences * 8 +
            data.physics * 7 +
            data.maths * 6 +
            data.arabic * 3 +
            data.french * 3 +
            data.ir * 2 +
            data.english * 2 +
            data.sport * 1) /
        32;
    print(result);
    return result;
  }

  double calculOrient() {
    double result = ((data.sciences * 3) +
            (data.physics * 2) +
            (data.maths) +
            calculeMoyenn()) /
        7;
    return result;
  }
}
