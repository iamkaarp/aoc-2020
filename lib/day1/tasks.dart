import '../fileReader.dart';

int taskA() {
  List rows = fileReader("day1");
  for(var num in rows) {
    int res = 2020 - int.parse(num);
    var find = rows.indexWhere((e) => e == res.toString());
    
    if(find > -1) {
      int output = int.parse(num) * int.parse(rows[find]);
      return output;
    }
  }
  return 0;
}

int taskB() {
  List rows = fileReader("day1");
  for(var num in rows) {
    for(var i = 1; i <= rows.length; i++) {
      int tempSum = int.parse(num) + int.parse(rows[i-1]);

      if(tempSum >= 2020) {
        continue;
      }
      int res = 2020 - tempSum;
      var find = rows.indexWhere((e) => e == res.toString());
    
      if(find > -1) {
        int output = int.parse(num) * int.parse(rows[i-1]) * int.parse(rows[find]);
        return output;
      }
    }
  }
  return 0;
}