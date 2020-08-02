import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:shortvideo/data/client/api_provider.dart';
import 'package:shortvideo/data/model/video_model.dart';

class VideoDataProvider with ChangeNotifier {
  List<VideoData> _videoFeed = [];
  List<VideoData> get followingList => _videoFeed;
  // Just for demo purpose reversing the order
  List<VideoData> get forYouList => _videoFeed.reversed.toList();
  var apiProvider = ApiProvider();

  VideoDataProvider() {
    getVideoFeed();
  }

  Future getVideoFeed() async {
    _videoFeed.clear();
    var data = await apiProvider.getVideoFeed();
    _videoFeed.addAll(data);

    notifyListeners();
  }
}
