import 'package:get/get.dart';
import 'package:music_player/app/routes/app_routes.dart';

class HomeController extends GetxController {
  void toPlay(int index) {
    Get.toNamed(AppRoutes.MUSICPLAYER, arguments: index);
  }
}
