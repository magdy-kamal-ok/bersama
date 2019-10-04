import 'package:flutter/material.dart';

import './screens/home.dart';
import './screens/schedule.dart';
import './screens/giving.dart';
import './screens/video.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ScheduleScreen.id: (context) => ScheduleScreen(),
        GivingScreen.id: (context) => GivingScreen(),
        VideoScreen.id: (context) => VideoScreen(),
      },
    );
  }
}
