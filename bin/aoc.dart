import 'package:args/args.dart';

// Local Packages
import 'package:aoc/fileReader.dart';
import 'package:aoc/day1/tasks.dart' as day1;
import 'package:aoc/day2/tasks.dart' as day2;

void main(List<String> arguments) {
  String day = "";
  var parser = ArgParser();
  parser.addOption('day',
      abbr: 'd', defaultsTo: 'all', callback: (n) => day = "day" + n);
  parser.parse(arguments);

  if (day == "day1") {
    runnerDay1();
  }

  if (day == "day2") {
    runnerDay2();
  }

  if (day == "dayall") {
    runAll();
  }
}

void runAll() {
  print('Running Day 1');
  runnerDay1();
  print('\n');
  print('Running Day 2');
  runnerDay2();
  print('\n');
}

void runnerDay1() {
  List items = fileReader("day1");
  final stopwatch = Stopwatch()..start();
  print('Task A');
  print(day1.taskA(items));
  print(stopwatch.elapsed);
  stopwatch.reset();
  print('\nTask B');
  print(day1.taskB(items));
  print(stopwatch.elapsed);
  stopwatch.stop();
}

void runnerDay2() {
  List items = fileReader("day2");
  final stopwatch = Stopwatch()..start();
  print('Task A');
  print(day2.taskA(items).toString());
  print(stopwatch.elapsed);
  stopwatch.reset();
  print('\nTask B');
  print(day2.taskB(items));
  print(stopwatch.elapsed);
  stopwatch.stop();
}
