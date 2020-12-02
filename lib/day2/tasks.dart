int taskA(items) {
  int matches = 0;
  for (String item in items) {
    List splitted = item.split(" ");
    List minMax = splitted[0].split("-");
    int min = int.parse(minMax[0]);
    int max = int.parse(minMax[1]);

    String char = splitted[1].substring(0, 1);

    String password = splitted[2];
    int numOfChars = char.allMatches(password).length;

    if (numOfChars >= min && numOfChars <= max) {
      matches++;
    }
  }
  return matches;
}

int taskB(items) {
  int matches = 0;
  for (String item in items) {
    List splitted = item.split(" ");
    List positions = splitted[0].split("-");
    int posA = int.parse(positions[0]);
    int posB = int.parse(positions[1]);

    String char = splitted[1].substring(0, 1);

    String password = splitted[2];
    if (password[posA - 1] == char && password[posB - 1] != char) {
      matches++;
    }

    if (password[posA - 1] != char && password[posB - 1] == char) {
      matches++;
    }
  }
  return matches;
}
