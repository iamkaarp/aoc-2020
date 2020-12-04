import 'package:test/test.dart';

import 'package:aoc/day3/tasks.dart' as day;

void main() {
  List items = [
    "..##.......",
    "#...#...#..",
    ".#....#..#.",
    "..#.#...#.#",
    ".#...##..#.",
    "..#.##.....",
    ".#.#.#....#",
    ".#........#",
    "#.##...#...",
    "#...##....#",
    ".#..#...#.#",
  ];
  test('Day 3 Task A', () {
    expect(day.taskA(items), 7);
  });

  test('Day 3 Task B', () {
    expect(day.taskB(items), 336);
  });
}
