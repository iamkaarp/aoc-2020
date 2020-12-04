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
  List output = [];
  String input = "";
  for (String row in rows) {
    if (row.length > 0) {
      input += row + " ";
    }

    if (row.length == 0) {
      output.add(input);
      input = "";
    }
  }
  print(output);
  return output;
}
