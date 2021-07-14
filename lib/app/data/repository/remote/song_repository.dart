import 'package:get/get.dart';
import 'package:music_player/app/data/model/local/demo_song.dart';
import 'package:music_player/app/data/provider/remote/song_api.dart';

class SongRepository {
  final SongApi _api = Get.find<SongApi>();

  Future<List<DemoSong>> getDemoSong() => _api.getDemoSong();
}
