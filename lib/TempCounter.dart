class TempCounter {
  int _count = 0;

  static final TempCounter tempCounter = TempCounter._internal();
  int get count => _count;

  int increament() {
    print(_count);
    _count++;
  }

  factory TempCounter() {
    return tempCounter;
  }

  TempCounter._internal();
}
