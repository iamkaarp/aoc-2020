int taskA(items) {
  return treeCounter({"stepY": 1, "stepX": 3}, items);
}

int taskB(items) {
  List slopes = [
    {"stepY": 1, "stepX": 1},
    {"stepY": 1, "stepX": 3},
    {"stepY": 1, "stepX": 5},
    {"stepY": 1, "stepX": 7},
    {"stepY": 2, "stepX": 1}
  ];
  int counted =
      slopes.map((slope) => treeCounter(slope, items)).reduce((a, b) => a * b);
  return counted;
}

int treeCounter(Map slope, List map) {
  int width = map[0].length;
  int treeCount = 0;
  int x = 0;

  for (int y = 0; y < map.length; y += slope["stepY"]) {
    if (x >= width) {
      x = x - width;
    }
    if (map[y][x] == "#") {
      treeCount++;
    }
    x += slope["stepX"];
  }
  return treeCount;
}
