import 'package:bac_note/data/data.dart';

class Calculator {
  double calculeMoyenn() {
    double result = (sciences * 8 +
            physics * 7 +
            maths * 6 +
            arabic * 3 +
            french * 3 +
            ir * 2 +
            english * 2 +
            sport * 1) /
        32;
    print(result);
    return result;
  }

  double calculOrient() {
    double result =
        ((sciences * 3) + (physics * 2) + (maths) + calculeMoyenn()) / 7;
    return result;
  }
}
