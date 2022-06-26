import 'package:advent_of_code_2015/day.dart';
import 'package:advent_of_code_2015/days.dart';

void main(List<String> arguments) {
  if (arguments.isNotEmpty)
    days[int.parse(arguments[0])]?.solve();
  else {
    for (Day day in days.values)
      day.solve();
  }
}
