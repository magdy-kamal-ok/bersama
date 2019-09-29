import 'package:flutter/material.dart';

class LongRoundButton extends StatelessWidget {
  LongRoundButton({@required this.onPress, this.title, this.bgcolor});

  final String title;
  final Function onPress;
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: bgcolor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
