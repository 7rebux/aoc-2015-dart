import 'package:test/test.dart';
import 'package:tuple/tuple.dart';
import 'package:advent_of_code_2015/day.dart';
import 'package:advent_of_code_2015/days.dart';

final Map<Day, Tuple2<dynamic, dynamic>> solutions = {
  days[1]!!: Tuple2(280, 1797),
};

void main() {
  for (MapEntry e in solutions.entries) {
    var day = e.key;
    var solution = e.value;

    test('test day ${day.number}: ${day.title}', () {
      expect(day.partOne(), solution.item1);
      expect(day.partTwo(), solution.item2);
    });
  }
}
