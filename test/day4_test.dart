import 'package:test/test.dart';

import 'package:aoc/day4/tasks.dart' as day;
import 'package:aoc/fileReader.dart';

void main() {
  test('Day 4 Task A', () {
    List items = fileReader("day4_taskA", true);
    expect(day.taskA(items), 2);
  });

  test('Day 4 Task B', () {
    List items = fileReader("day4_taskB", true);
    expect(day.taskB(items), 4);
  });
}
