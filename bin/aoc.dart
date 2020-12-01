import 'package:args/args.dart';

// Local Packages
import 'package:aoc/day1/tasks.dart' as day1;

void main(List<String> arguments) {
  String day = "";
  var parser = ArgParser();
  parser.addOption('day', abbr: 'd', defaultsTo: 'all', callback: (n) => day = "day" + n);
  parser.parse(arguments);
  
  if(day == "day1") {
    runnerDay1();
  }

  if(day == "dayall") {
    runAll();
  }
}

void runAll() {
  runnerDay1();
}

void runnerDay1() {
  final stopwatch = Stopwatch()..start();
  print(day1.taskA());
  print(stopwatch.elapsed);
  stopwatch.reset();
  print(day1.taskB());
  print(stopwatch.elapsed);
  stopwatch.stop();
}

