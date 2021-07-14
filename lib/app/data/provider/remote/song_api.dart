import 'package:dio/dio.dart';
import 'package:get/get.dart' as geT;
import 'package:logger/logger.dart';
import 'package:music_player/app/data/model/local/demo_song.dart';

class SongApi {
  final Dio _dio = geT.Get.find<Dio>();
  Logger _logger = Logger();

  Future<List<DemoSong>> getDemoSong() async {
    final String key = 'bc551b4cc1msh6a54c19e54aed9ep121c14jsn47290d342218';
    final String host = 'shazam.p.rapidapi.com';

    try {
      final Response response = await _dio.get('/search',
          options: Options(headers: {
            'x-rapidapi-key': key,
            'x-rapidapi-host': host,
          }),
          queryParameters: {
            'term': 'kiss the rain',
            'locale': 'en-US',
            'offset': 0,
            'limit': 1,
          });
      return (response.data['artists']['hits'] as List).map((e) {
        _logger.i(e);
      }
          // DemoSong(
          //     albumArtUrl: e['artists']['hits']['artist']['avatar'],
          //     audioUrl: e['tracks']['hits']['url'],
          //     songTitle: e['tracks']['hits']['title'],
          //     artist: e['artists']['hits']['artist']['name'])
          ).toList();
    } catch (e) {}
  }
}
