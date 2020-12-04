import 'package:test/test.dart';

import 'package:aoc/day4/tasks.dart' as day;

void main() {
  List items = [
    "ecl:gry pid:860033327 eyr:2020 hcl:#fffffd\nbyr:1937 iyr:2017 cid:147 hgt:183cm",
    "iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884\nhcl:#cfa07d byr:1929",
    "hcl:#ae17e1 iyr:2013\neyr:2024\necl:brn pid:760753108 byr:1931\nhgt:179cm",
    "hcl:#cfa07d eyr:2025 pid:166559648\niyr:2011 ecl:brn hgt:59in"
  ];
  test('Day 4 Task A', () {
    expect(day.taskA(items), 2);
  });

  /*test('Day 4 Task B', () {
    expect(day.taskB(items), 336);
  });*/
}
