import 'package:flutter/material.dart';

import './schedule.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black45.withOpacity(0.9), BlendMode.dstATop),
            image: AssetImage("assets/background_home.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(top: 60.0, left: 25.0),
                child: Text(
                  'Bersama',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontFamily: 'AbrilFatface',
                    fontSize: 26.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0, left: 25.0, right: 10.0),
                child: Text('Overcome stress and negative thoughts',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'AbrilFatface',
                      fontSize: 36.0,
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 100.0, bottom: 50.0, right: 20.0),
              child: Material(
                elevation: 10.0,
                color: Colors.lightBlueAccent,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ScheduleScreen.id);
                  },
                  minWidth: 150.0,
                  height: 42.0,
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'AbrilFatface'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
