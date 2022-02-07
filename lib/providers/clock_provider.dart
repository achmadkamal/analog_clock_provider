import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';

class ClockProvider with ChangeNotifier {
  double _secondAngle = 0.0;
  double get secondAngle => _secondAngle;

  double _minuteAngle = 0.0;
  double get minuteAngle => _minuteAngle;

  double _hourAngle = 0.0;
  double get hourAngle => _hourAngle;

  void startClock() {
    Timer.periodic(
      Duration(milliseconds: 500),
      (_) {
        final now = DateTime.now();
        _secondAngle = (pi / 30) * now.second;
        _minuteAngle = (pi / 30) * now.minute;
        _hourAngle = (pi / 6 * now.hour) + (pi / 45 * _minuteAngle);
        notifyListeners();
      },
    );
  }
}
