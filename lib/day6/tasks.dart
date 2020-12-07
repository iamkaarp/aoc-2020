int taskA(List items) {
  List answers = splicingNSplitting(items);
  int sum = 0;

  for (String answer in answers) {
    List splitted = answer.split("");
    int count = 0;
    List counted = [];
    for (String letter in splitted) {
      if (counted.contains(letter)) {
        continue;
      }
      count++;
      counted.add(letter);
    }
    sum += count;
  }

  return sum;
}

int taskB(List items) {
  int sum = 0;
  String tmp = "";
  for (int i = 0; i < items.length; i++) {
    if (items[i].length == 0) {
      tmp += items[i] + '\n';
      continue;
    }
    if (items[i] == items.length - 1) {
      tmp += items[i];
    }
    tmp += items[i] + '|';
  }

  List groups = tmp.split("\n");

  for (String group in groups) {
    List persons = group.split("|");
    persons.removeLast();
    int count = 0;
    for (String person in persons) {
      List answers = person.split("");
      for (String answer in answers) {}
      print(person);
    }
  }

  return sum;
}

List splicingNSplitting(rows) {
  String input = "";
  for (String row in rows) {
    if (row.contains(RegExp(r'[a-z]$'))) {
      input += row;
    }

    if (row.length == 0) {
      input += "\n";
    }
  }

  List split = input.split("\n");

  return split;
}
