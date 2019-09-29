import 'package:flutter/material.dart';
import 'package:bersama/screens/home.dart';
import 'package:bersama/screens/schedule.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ScheduleScreen.id: (context) => ScheduleScreen(),
      },
    );
  }
}
