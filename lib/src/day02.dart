import '../../day.dart';
import 'dart:math';

class Day02 extends Day {
  Day02() : super(2, 'I Was Told There Would Be No Math');

  @override
  dynamic partOne() {
    var totalPaper = 0;

    for (String s in inputList()) {
      var dim = parse(s);
      var l = dim[0], w = dim[1], h = dim[2];

      totalPaper += 2*l*w + 2*w*h + 2*h*l;
      totalPaper += min(min(l*w, w*h), h*l);
    }

    return totalPaper;
  }

  @override
  dynamic partTwo() {
    var totalRibbon = 0;

    for (String s in inputList()) {
      var dim = parse(s);
      var l = dim[0], w = dim[1], h = dim[2];

      totalRibbon += min(w+w + h+h, min(l+l + w+w, l+l + h+h));
      totalRibbon += l*w*h;
    }

    return totalRibbon;
  }

  List<int> parse(String dimension) {
    return dimension.split('x').map(int.parse).toList();
  }
}
