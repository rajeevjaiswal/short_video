import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shortvideo/data/model/video_model.dart';
import 'package:shortvideo/provider/top_bar_provider.dart';

Widget videoDesc(VideoData videoData) {
  return Container(
    padding: EdgeInsets.only(left: 16, bottom: 60),
    child:
        Consumer<TopBarProvider>(builder: (context, top_bar_provider, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 7, bottom: 7),
            child: Text(
              "@${videoData.user.name}",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4, bottom: 7),
            child: Text(videoData.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300)),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note,
                size: 19,
                color: Colors.white,
              ),
              Text(
                "By Pinkvilla team",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ],
      );
    }),
  );
}
