import 'package:get/get.dart';
import 'package:music_player/app/modules/music_player/music_payer_controller.dart';

class MusicPlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MusicPlayerController());
  }
}
