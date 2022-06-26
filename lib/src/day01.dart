import '../../day.dart';

class Day01 extends Day {
  Day01() : super(1, 'Not Quite Lisp');

  @override
  dynamic partOne() {
    return '('.allMatches(inputString()).length
      - ')'.allMatches(inputString()).length;
  }

  @override
  dynamic partTwo() {
    var floor = 0;
    var pos = 1;

    for (String c in inputString().split('')) {
      if (c == ')') floor--; else floor++;
      if (floor == -1) break;

      pos++;
    }

    return pos;
  }
}
