import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:path/path.dart';

List fileReader(String day) {
  String pathToFile = join(dirname(Platform.script.toFilePath()), '../input/', day);

  var file = new File(pathToFile);
  List rows = file.readAsLinesSync();
  return rows;
}