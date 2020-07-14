import 'dart:async';

class TimeStream {
  Stream<String> dateTimeStream() async* {
    while (true) {
      yield DateTime.now().toString();
      await Future.delayed(Duration(seconds: 1));
    }
  }
}
