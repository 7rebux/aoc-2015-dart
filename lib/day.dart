import 'dart:io';

abstract class Day {
  Day(this.number, this.title);

  final int number;
  final String title;

  dynamic partOne();
  dynamic partTwo();

  String get fileName =>
    'input/day${number.toString().padLeft(2, '0')}.txt';

  String inputString() {
    return File(fileName).readAsStringSync();
  }

  List<String> inputList() {
    return File(fileName)
      .readAsLinesSync()
      .toList();
  }

  void solve() {
    print('---| Day ${number}: $title |---');
    print('Part 1: ${partOne()}');
    print('Part 2: ${partTwo()}');
    print('---');
  }
}
