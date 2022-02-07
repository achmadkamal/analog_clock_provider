import 'package:analog_clock_provider/pages/clock_page.dart';
import 'package:analog_clock_provider/providers/clock_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ClockProvider(),
        ),
      ],
      child: MaterialApp(
        home: ClockPage(),
      ),
    );
  }
}
