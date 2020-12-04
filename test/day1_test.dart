import 'package:test/test.dart';

import 'package:aoc/day1/tasks.dart' as day;

void main() {
  List items = ["1721", "979", "366", "299", "675", "1456"];
  test('Day 1 Task A', () {
    expect(day.taskA(items), 514579);
  });

  test('Day 1 Task B', () {
    expect(day.taskB(items), 241861950);
  });
}
