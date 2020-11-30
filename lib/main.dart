import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/video_player_flutter.dart';

void main() {
  runApp(
    VideoApp(),
  );
}

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        "https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8"); //Specify the url/filePath/asset Path .
    //No Need to initalize or Dispose VideoController.
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Fluttervideoplayer(
        controller: _controller,
        enableLooping: true,
        enableScaling: true,
        flutterVolume: 0.5,
        allowonlylandscape: false,
      ),
    );
  }
}
