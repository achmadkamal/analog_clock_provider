
import 'package:flutter/material.dart';

class HourWidget extends StatelessWidget {
  final double hourAngle;
  const HourWidget({
    Key? key,
    required this.hourAngle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: hourAngle,
      child: Container(
        alignment: Alignment(0, -0.28),
        child: Container(
          height: MediaQuery.of(context).size.width * 0.15,
          width: 8,
          decoration: BoxDecoration(
            color: Colors.blue[800],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}