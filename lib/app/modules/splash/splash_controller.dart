import 'package:get/get.dart';
import 'package:music_player/app/routes/app_routes.dart';

class SplashController extends GetxController {
  _init() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offNamed(AppRoutes.HOME);
  }

  @override
  void onReady() {
    _init();
    super.onReady();
  }
}
