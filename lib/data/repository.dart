import 'package:shortvideo/data/model/video_model.dart';

import 'client/api_provider.dart';

class Repository {
  final apiProvider = ApiProvider();

  Future<List<VideoData>> getVideoFeed() => apiProvider.getVideoFeed();
}
