int taskA(List items) {
  List bags = parseBags(items);
  Map<String, bool> result = {};
  findBags('shiny gold', bags, result);
  return result.length;
}

int taskB(List items) {
  List bags = parseBags(items);
  String needle = 'shiny gold';
  Map bag = bags.firstWhere((e) => e['color'] == needle);
  int count = countBags(bag, bags);
  return count;
}

int countBags(Map bag, List bags) {
  int count = 0;
  for (Map shallowChild in bag['children']) {
    count += shallowChild['count'];
    int index = bags.indexWhere((e) => e['color'] == shallowChild['color']);
    if(index != -1) {
      Map childBag = bags[index];
      if (childBag['children'].length > 0) {
        count += countBags(childBag, bags) * shallowChild['count'];
      }
    }
  }
  return count;
}

void findBags(String needle, List bags, Map<String, bool> result) {
  for(Map bag in bags) {
    for(Map childBag in bag['children']) {
      if (childBag['color'] != needle) {
        continue;
      }
      result[bag['color']] = true;
      findBags(bag['color'], bags, result);
    }
  }
}

List parseBags(rows) {
  List parsed = [];
  for(String row in rows) {
    List columns = row.split('contain');
    List t = columns[0].split(" ");
    String parentColor = t[0] + " " + t[1];
    Map parent = {
      "color": parentColor,
      "count": 0,
      "children": [],
    };

    List bags = columns[1].split(',');

    if (bags.length == 1 && bags[0].contains('no other bags.')) {
      continue;
    }

    for(String bag in bags) {
      List t = bag.split(" ");
      int count = int.parse(t[1]);
      String color = t[2] + " " + t[3];

      Map child = {
        "color": color,
        "count": count,
        "children": []
      };

      parent['children'].add(child);
    }

    parsed.add(parent);
  }

  return parsed;
}