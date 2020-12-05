import 'package:test/test.dart';

import 'package:aoc/day5/tasks.dart' as day;
import 'package:aoc/fileReader.dart';

void main() {
  List items = fileReader("day5_taskA", true);
  test('Day 5 Task A', () {
    expect(day.taskA(items), 357);
  });

  // No test for Task B
}
