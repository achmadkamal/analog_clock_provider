import 'dart:async';
import 'package:analog_clock_provider/providers/clock_provider.dart';
import 'package:analog_clock_provider/widgets/dot_widget.dart';
import 'package:analog_clock_provider/widgets/hour_widget.dart';
import 'package:analog_clock_provider/widgets/minute_widget.dart';
import 'package:analog_clock_provider/widgets/second_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      context.read<ClockProvider>().startClock();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment(0, 0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.width * 0.85,
          child: Stack(
            children: [
              Image.asset('images/clock.png'),
              Consumer<ClockProvider>(
                builder: (context, clock, _) =>
                    SecondWidget(secondAngle: clock.secondAngle),
              ),
              Consumer<ClockProvider>(
                builder: (context, clock, _) =>
                    MinuteWidget(minuteAngle: clock.minuteAngle),
              ),
              Consumer<ClockProvider>(
                builder: (context, clock, _) =>
                    HourWidget(hourAngle: clock.hourAngle),
              ),
              DotWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
