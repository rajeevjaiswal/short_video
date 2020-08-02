import 'package:http/http.dart' as http;
import 'package:shortvideo/data/model/video_model.dart';

class ApiProvider {
  String url = 'https://www.pinkvilla.com/';

  Future<List<VideoData>> getVideoFeed() async {
    http.Response res = await http.get('${url}feed/video-test/video-feed.json');

    if (res.statusCode < 200 || res.statusCode > 400) {
      throw Exception("Error fetching data from server");
    }
    return videoDataFromJson(res.body);
  }
}
