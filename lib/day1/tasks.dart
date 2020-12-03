int taskA(List items) {
  for (var num in items) {
    int res = 2020 - int.parse(num);
    var find = items.indexWhere((e) => e == res.toString());

    if (find > -1) {
      int output = int.parse(num) * int.parse(items[find]);
      return output;
    }
  }
  return 0;
}

int taskB(List items) {
  for (var num in items) {
    for (var i = 1; i <= items.length; i++) {
      int tempSum = int.parse(num) + int.parse(items[i - 1]);

      if (tempSum >= 2020) {
        continue;
      }
      int res = 2020 - tempSum;
      var find = items.indexWhere((e) => e == res.toString());

      if (find > -1) {
        int output =
            int.parse(num) * int.parse(items[i - 1]) * int.parse(items[find]);
        return output;
      }
    }
  }
  return 0;
}
