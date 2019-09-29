import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
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
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: AssetImage("assets/background_home.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
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
              flex: 3,
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
          ],
        ),
      ),
    );
  }
}
