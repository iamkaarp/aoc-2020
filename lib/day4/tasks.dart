import '../fileReader.dart';

int taskA(rows) {
  List items = splicingNSplitting(rows);

  int valid = 0;
  for (String item in items) {
    if (isItemCompliant(item)) {
      valid++;
    }
  }
  return valid;
}

int taskB(rows) {
  List items = splicingNSplitting(rows);

  int valid = 0;
  for (String item in items) {
    List attributes = item.trim().split(" ");
    attributes.sort();
    if (isItemCompliant(item) && validator(attributes)) {
      valid++;
    }
  }
  return valid;
}

bool validator(List attributes) {
  List eyeColors = ["amb", "blu", "brn", "gry", "grn", "hzl", "oth"];
  int check = 0;
  for (String attribute in attributes) {
    if (attribute.contains(new RegExp(r'^byr'))) {
      String year = attribute.substring(4);
      if (year.length == 4 &&
          int.parse(year) >= 1920 &&
          int.parse(year) <= 2002) {
        check++;
      }
    }

    if (attribute.contains(new RegExp(r'^iyr'))) {
      String year = attribute.substring(4);
      if (year.length == 4 &&
          int.parse(year) >= 2010 &&
          int.parse(year) <= 2020) {
        check++;
      }
    }

    if (attribute.contains(new RegExp(r'^eyr'))) {
      String year = attribute.substring(4);
      if (year.length == 4 &&
          int.parse(year) >= 2020 &&
          int.parse(year) <= 2030) {
        check++;
      }
    }

    if (attribute.contains(new RegExp(r'^hgt'))) {
      int height = int.parse(attribute.replaceAll(RegExp('[^0-9]'), ''));
      if (attribute.contains(new RegExp(r'cm')) &&
          height >= 150 &&
          height <= 193) {
        check++;
      }

      if (attribute.contains(new RegExp(r'in')) &&
          height >= 59 &&
          height <= 76) {
        check++;
      }
    }

    if (attribute.contains(new RegExp(r'^hcl'))) {
      if (attribute.contains(new RegExp(r'#[a-f0-9]{6}$'))) {
        check++;
      }
    }

    if (attribute.contains(new RegExp(r'^ecl'))) {
      if (eyeColors.contains(attribute.substring(4))) {
        check++;
      }
    }

    if (attribute.contains(new RegExp(r'^pid'))) {
      if (attribute.substring(4).length == 9) {
        check++;
      }
    }
  }

  if (check == 7) {
    return true;
  }
  return false;
}

bool isItemCompliant(String item) {
  bool hasByr = item.contains(new RegExp(r'byr'));
  bool hasIyr = item.contains(new RegExp(r'iyr'));
  bool hasHgt = item.contains(new RegExp(r'hgt'));
  bool hasHcl = item.contains(new RegExp(r'hcl'));
  bool hasEcl = item.contains(new RegExp(r'ecl'));
  bool hasPid = item.contains(new RegExp(r'pid'));
  bool hasEyr = item.contains(new RegExp(r'eyr'));

  return hasByr & hasIyr & hasHgt & hasHcl & hasEcl & hasPid & hasEyr;
}

List splicingNSplitting(rows) {
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
