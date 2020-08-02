// To parse this JSON data, do
//
//     final videoData = videoDataFromJson(jsonString);

import 'dart:convert';

List<VideoData> videoDataFromJson(String str) =>
    List<VideoData>.from(json.decode(str).map((x) => VideoData.fromJson(x)));

String videoDataToJson(List<VideoData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VideoData {
  VideoData({
    this.url,
    this.commentCount,
    this.likeCount,
    this.shareCount,
    this.title,
    this.user,
  });

  String url;
  int commentCount;
  int likeCount;
  int shareCount;
  String title;
  User user;

  factory VideoData.fromJson(Map<String, dynamic> json) => VideoData(
        url: json["url"],
        commentCount: json["comment-count"],
        likeCount: json["like-count"],
        shareCount: json["share-count"],
        title: json["title"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "comment-count": commentCount,
        "like-count": likeCount,
        "share-count": shareCount,
        "title": title,
        "user": user.toJson(),
      };
}

class User {
  User({
    this.name,
    this.headshot,
  });

  String name;
  String headshot;

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        headshot: json["headshot"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "headshot": headshot,
      };
}
