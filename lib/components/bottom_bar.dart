import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  BottomBar({@required this.onTap, @required this.currentIndex});

  final Function onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          title: Text('Schedule'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('Giving'),
        ),
      ],
      currentIndex: currentIndex,
      elevation: 5.0,
      selectedItemColor: Colors.amber[800],
      onTap: onTap,
    );
  }
}
