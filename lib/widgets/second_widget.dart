

import 'package:flutter/material.dart';

class SecondWidget extends StatelessWidget {
  final double secondAngle;
  const SecondWidget({Key? key, required this.secondAngle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: secondAngle,
      child: Container(
        alignment: Alignment(0, -0.6),
        child: Container(
          height: MediaQuery.of(context).size.width * 0.28,
          width: 2,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
