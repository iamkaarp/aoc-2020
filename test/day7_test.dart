import 'package:test/test.dart';

import 'package:aoc/day7/tasks.dart' as day;
import 'package:aoc/fileReader.dart';

void main() {
  List items = fileReader("day7_taskA", true);
  test('Day 6 Task A', () {
    expect(day.taskA(items), 4);
  });

  List items = fileReader("day7_taskB", true);
  test('Day 6 Task A', () {
    expect(day.taskB(items), 126);
  });
}
