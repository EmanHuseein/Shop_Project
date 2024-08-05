class CounterItemModel {
  int count = 0;
  String text;

  CounterItemModel({required this.text});

  void add() {
    count++;
  }

  void subtract() {
    if (count == 0) {
    } else {
      count--;
    }
  }
}
