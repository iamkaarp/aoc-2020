import 'package:test/test.dart';

import 'package:aoc/day3/tasks.dart' as day3;

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
    expect(day3.taskA(items), 7);
  });

  test('Day 3 Task B', () {
    expect(day3.taskB(items), 336);
  });
}
