import 'package:flutter/material.dart';
import 'package:shortvideo/widgets/loaderWidget.dart';
import 'package:video_player/video_player.dart';

class AppVideoPlayer extends StatefulWidget {
  var url;

  AppVideoPlayer({this.url});

  @override
  _AppVideoPlayerState createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends State<AppVideoPlayer> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    print("url=" + widget.url);
    _controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.2),
      child: Center(
        child: _controller.value.initialized
            ? SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size?.width ?? 0,
                    height: _controller.value.size?.height ?? 0,
                    child: Container(
                      child: VideoPlayer(
                        _controller,
                      ),
                    ),
                  ),
                ),
              )
            : LoaderWidget(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
