import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlay extends StatefulWidget {
  late VideoPlayerController videoPlayController;

  @override
  _VideoPlayState createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    widget.videoPlayController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayController,
        aspectRatio: 16 / 9,
        autoInitialize: true,
        showOptions: false);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        child: Container(
            height: (MediaQuery.of(context).size.width - 32) / 16 * 9,
            child: Chewie(
              controller: _chewieController,
            )));
  }

  @override
  void dispose() {
    widget.videoPlayController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
