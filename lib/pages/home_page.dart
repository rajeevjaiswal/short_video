import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shortvideo/data/model/video_model.dart';
import 'package:shortvideo/provider/top_bar_provider.dart';
import 'package:shortvideo/provider/video_data_provider.dart';
import 'package:shortvideo/widgets/for_you_home_video_renderer.dart';
import 'package:shortvideo/widgets/home/controls/onscreen_controls.dart';
import 'package:shortvideo/widgets/home/home_video_renderer.dart';
import 'package:shortvideo/widgets/loaderWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<VideoData> followingList = [];
  List<VideoData> foryouList = [];
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final videoProvider = Provider.of<VideoDataProvider>(context);

    followingList = videoProvider.followingList;
    foryouList = videoProvider.forYouList;

    return Scaffold(
        key: _scaffoldKey,
        body: followingList.length == 0
            ? LoaderWidget()
            : Container(
                child: Consumer<TopBarProvider>(
                  builder: (context, topbar_provider, child) {
                    return PageView.builder(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, position) {
                          VideoData videoData =
                              topbar_provider.currentIndex == 0
                                  ? followingList[position]
                                  : foryouList[position];

                          return Container(
                            color: Colors.black,
                            child: Stack(
                              children: <Widget>[
                                topbar_provider.currentIndex == 0
                                    ? AppVideoPlayer(
                                        url: videoData.url,
                                      )
                                    : ForYouAppVideoPlayer(
                                        url: videoData.url,
                                      ),
                                onScreenControls(videoData)
                              ],
                            ),
                          );
                        },
                        itemCount: topbar_provider.currentIndex == 0
                            ? followingList.length
                            : foryouList.length);
                  },
                ),
              ));
  }
}
