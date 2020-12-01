import 'package:test/test.dart';

import 'package:aoc/day1/tasks.dart' as day1;

void main() {
  Day1();
}

void Day1() {
  List items = ["1721", "979", "366", "299", "675", "1456"];
  test('Day 1 Task A', () {
    expect(day1.taskA(items), 514579);
  });

  test('Day 1 Task B', () {
    expect(day1.taskB(items), 241861950);
  });
}
