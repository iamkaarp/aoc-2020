import 'dart:io';
import 'package:path/path.dart';

List fileReader(String day) {
  String pathToFile =
      join(dirname(Platform.script.toFilePath()), '../input/', day);

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
