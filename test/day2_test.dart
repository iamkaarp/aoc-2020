import 'package:test/test.dart';

import 'package:aoc/day2/tasks.dart' as day;

void main() {
  List items = ["1-3 a: abcde", "1-3 b: cdefg", "2-9 c: ccccccccc"];
  test('Day 2 Task A', () {
    expect(day.taskA(items), 2);
  });

  test('Day 2 Task B', () {
    expect(day.taskB(items), 1);
  });
}
