import 'package:flutter/material.dart';
import 'package:shortvideo/widgets/loaderWidget.dart';
import 'package:video_player/video_player.dart';

class ForYouAppVideoPlayer extends StatefulWidget {
  var url;

  ForYouAppVideoPlayer({this.url});

  @override
  _ForYouAppVideoPlayerState createState() => _ForYouAppVideoPlayerState();
}

class _ForYouAppVideoPlayerState extends State<ForYouAppVideoPlayer> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.initialized
          ? SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size?.width ?? 0,
                  height: _controller.value.size?.height ?? 0,
                  child: VideoPlayer(
                    _controller,
                  ),
                ),
              ),
            )
          : LoaderWidget(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
