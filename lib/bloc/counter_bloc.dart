import 'dart:ffi';

import 'package:rxdart/rxdart.dart';

class CounterBLoc {
  int _counter = 0;
  final _counterSubject = BehaviorSubject.seeded(0);

  void addCounter() {
    _counter++;
    _counterSubject.add(_counter);
  }

  Stream<int> get count$ => _counterSubject.stream;
}
