
import 'package:flutter/material.dart';

class MinuteWidget extends StatelessWidget {
  final double minuteAngle;
  const MinuteWidget({Key? key, required this.minuteAngle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: minuteAngle,
      child: Container(
        alignment: Alignment(0, -0.43),
        child: Container(
          height: MediaQuery.of(context).size.width * 0.22,
          width: 5,
          decoration: BoxDecoration(
            color: Colors.green[800],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}