import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

class VideoScreen extends StatefulWidget {
  static const String id = 'video_screen';

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoPlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
