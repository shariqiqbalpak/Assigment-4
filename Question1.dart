void main() {
  List<int> list = [
    1,
    5,
    4,
    1,
    2,
    5,
    4,
    7,
    7,
    8,
    7,
    4,
    1,
    2,
    3,
    4,
    5,
    6,
    8,
    7,
    9,
    8,
    7
  ];
  Map<int, int> listmaps = {};
  int startingIndex = 0;
  int EndingIndex = 0;
  int result = -1;
  for (var values in list) {
    for (int count = 0; count < list.length - 1; count++) {
      if (count == 0) {
        startingIndex = count;
      }
      if (startingIndex == 0 && EndingIndex == 0 && count != 0) {
        startingIndex = count;
      }
      if (list[count] - list[count + 1] == result) {
        EndingIndex = count + 1;
      } else {
        startingIndex = 0;
        EndingIndex = 0;
      }
      listmaps[startingIndex] = EndingIndex;
    }
  }
  int max=0;
  listmaps.forEach((key, value) {
    if(key+value>max){
      max=key-value;
    }

  });
listmaps.forEach(((key, value) {
  if(key-value==max){
    print(max);
    var sublist=list.sublist(key, value);
    print(sublist);
  }
}));
}