import 'dart:io';
import 'package:path/path.dart';

List fileReader(String day, [bool test = false]) {
  String path = "../input/";
  if (test) {
    path = "input/";
  }
  String pathToFile = join(dirname(Platform.script.toFilePath()), path, day);

  var file = new File(pathToFile);
  List rows = file.readAsLinesSync();
  return rows;
}

List specialReader(String day) {
  List rows = fileReader(day);

  String input = "";
  for (String row in rows) {
    if (row.contains(":")) {
      input += row + " ";
    }

    if (row.length == 0) {
      input += "\n";
    }
  }

  List split = input.split("\n");

  return split;
}
