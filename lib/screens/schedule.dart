import 'package:flutter/material.dart';
import '../components/bottom_bar.dart';

class ScheduleScreen extends StatefulWidget {
  static const String id = 'schedule_screen';

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bottom Bar'),
      ),
      bottomNavigationBar: BottomBar(onTap: null, currentIndex: 1),
    );
  }
}
