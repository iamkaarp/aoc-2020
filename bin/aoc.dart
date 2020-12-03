import 'package:args/args.dart';
import 'package:ansicolor/ansicolor.dart';

// Local Packages
import 'package:aoc/fileReader.dart';
import 'package:aoc/day1/tasks.dart' as day1;
import 'package:aoc/day2/tasks.dart' as day2;
import 'package:aoc/day3/tasks.dart' as day3;

void main(List<String> arguments) {
  String day = "";
  var parser = ArgParser();
  parser.addOption('day',
      abbr: 'd', defaultsTo: 'all', callback: (n) => day = "day" + n);
  parser.parse(arguments);

  List items;
  if (day != "dayall") {
    items = fileReader("${day}");
  }

  if (day == "day1") {
    runnerDay1(items);
  }

  if (day == "day2") {
    runnerDay2(items);
  }

  if (day == "day3") {
    runnerDay3(items);
  }

  if (day == "dayall") {
    runAll();
  }
}

void runAll() {
  AnsiPen black = new AnsiPen()..black(bold: true);
  AnsiPen yellow = new AnsiPen()..yellow(bold: true);
  final stopwatch1 = Stopwatch()..start();
  List items = fileReader("day1");
  print(yellow("Day 1\n"));
  runnerDay1(items);
  items = fileReader("day2");
  print(yellow("Day 2\n"));
  runnerDay2(items);
  items = fileReader("day3");
  print(yellow("Day 3\n"));
  runnerDay3(items);
  print(black("Total time:\t${stopwatch1.elapsed}"));
  stopwatch1.stop();
}

void runnerDay1(items) {
  AnsiPen green = new AnsiPen()..green(bold: true);
  AnsiPen red = new AnsiPen()..red(bold: true);
  final stopwatch = Stopwatch()..start();
  print(red('Task A'));
  print('Result:\t' + day1.taskA(items).toString());
  print(green('Time:\t${stopwatch.elapsed}'));
  stopwatch.reset();
  print(red('\nTask B'));
  print('Result:\t' + day1.taskB(items).toString());
  print(green('Time:\t${stopwatch.elapsed}'));
  print("\n\n");
  stopwatch.stop();
}

void runnerDay2(items) {
  AnsiPen green = new AnsiPen()..green(bold: true);
  AnsiPen red = new AnsiPen()..red(bold: true);
  final stopwatch = Stopwatch()..start();
  print(red('Task A'));
  print('Result:\t' + day2.taskA(items).toString());
  print(green('Time:\t${stopwatch.elapsed}'));
  stopwatch.reset();
  print(red('\nTask B'));
  print('Result:\t' + day2.taskB(items).toString());
  print(green('Time:\t${stopwatch.elapsed}'));
  print("\n\n");
  stopwatch.stop();
}

void runnerDay3(items) {
  AnsiPen green = new AnsiPen()..green(bold: true);
  AnsiPen red = new AnsiPen()..red(bold: true);
  final stopwatch = Stopwatch()..start();
  print(red('Task A'));
  print('Result:\t' + day3.taskA(items).toString());
  print(green('Time:\t${stopwatch.elapsed}'));
  stopwatch.reset();
  print(red('\nTask B'));
  print('Result:\t' + day3.taskB(items).toString());
  print(green('Time:\t${stopwatch.elapsed}'));
  print("\n\n");
  stopwatch.stop();
}
