import 'package:get/get.dart';
import 'package:music_player/app/data/provider/remote/song_api.dart';
import 'package:music_player/app/data/repository/remote/song_repository.dart';
import 'package:dio/dio.dart';

class DependencyInjection {
  static void init() {
    //Get.put<FlutterSecureStorage>(() => FlutterSecureStorage());
    //   Get.put<VentaController>(VentaController());
    //   Get.put<ConnetedGlobalController>(ConnetedGlobalController());
    //Get.put<SharedPreferenceService>(SharedPreferenceService());
    Get.put<Dio>(
      Dio(BaseOptions(baseUrl: 'https://shazam.p.rapidapi.com')),
    );

    //   //* providers
    Get.put<SongApi>(SongApi());

    //   //* repositories
    Get.put<SongRepository>(SongRepository());
  }
}
