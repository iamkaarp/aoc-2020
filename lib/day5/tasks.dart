int taskA(items) {
  int seatID = 0;

  for (String seat in items) {
    int id = seatIDFromString(seat);
    seatID = id > seatID ? id : seatID;
  }

  return seatID;
}

int taskB(items) {
  List seatIDs = [];

  for (String seat in items) {
    int id = seatIDFromString(seat);
    seatIDs.add(id);
  }
  seatIDs.sort();
  for (int i = 0; i < seatIDs.length; i++) {
    int expectedSeatId = seatIDs[i] + 1;
    int nextSeatId = seatIDs[i + 1];

    if (nextSeatId != expectedSeatId) {
      return expectedSeatId;
    }
  }

  return 0;
}

int seatIDFromString(String seat) {
  int currRowLow = 0;
  int currRowHigh = 127;
  int currColLow = 0;
  int currColHigh = 7;

  for (int i = 0; i < seat.length - 3; i++) {
    if (seat[i] == "F") {
      currRowHigh = (currRowLow + currRowHigh) ~/ 2;
    } else {
      currRowLow = (currRowLow + currRowHigh) ~/ 2 + 1;
    }
  }
  for (int i = seat.length - 3; i < seat.length; i++) {
    if (seat[i] == "R") {
      currColLow = (currColLow + currColHigh) ~/ 2 + 1;
    } else {
      currColHigh = (currColLow + currColHigh) ~/ 2;
    }
  }

  return currRowLow * 8 + currColLow;
}
