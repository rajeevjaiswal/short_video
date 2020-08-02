import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:shortvideo/animations/spinner_animation.dart';
import 'package:shortvideo/data/model/video_model.dart';
import 'package:shortvideo/resources/assets.dart';
import 'package:shortvideo/widgets/home/audio_spinner_icon.dart';
import 'package:shortvideo/widgets/home/controls/video_control_action.dart';
import 'package:shortvideo/widgets/home/video_metadata/user_profile.dart';
import 'package:shortvideo/widgets/home/video_metadata/video_desc.dart';

Widget onScreenControls(VideoData videoData) {
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(flex: 5, child: videoDesc(videoData)),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(bottom: 60, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                userProfile(videoData),
                videoControlAction(
                    icon: AppIcons.heart,
                    label: videoData.likeCount.toString()),
                videoControlAction(
                    icon: AppIcons.chat_bubble,
                    label: videoData.commentCount.toString()),
                InkWell(
                  onTap: () {
                    Share.share('shortvideo coming soon, Stay tuned!');
                  },
                  child: videoControlAction(
                      icon: AppIcons.reply, label: "Share", size: 27),
                ),
                SpinnerAnimation(body: audioSpinner())
              ],
            ),
          ),
        )
      ],
    ),
  );
}
