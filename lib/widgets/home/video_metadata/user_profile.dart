import 'package:flutter/material.dart';
import 'package:shortvideo/data/model/video_model.dart';

Widget userProfile(VideoData videoData) {
  return Padding(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    child: Column(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              child: ClipOval(
                child: Image.network(
                  videoData.user.headshot,
                  fit: BoxFit.contain,
                  width: 50,
                  height: 50,
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white, width: 1.0, style: BorderStyle.solid),
                color: Colors.black,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 18,
              width: 18,
              child: Icon(Icons.add, size: 10, color: Colors.white),
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            )
          ],
        )
      ],
    ),
  );
}
