import 'package:get/get.dart';
import 'package:music_player/app/modules/home/home_binding.dart';
import 'package:music_player/app/modules/home/home_page.dart';
import 'package:music_player/app/modules/music_player/music_payer_binding.dart';
import 'package:music_player/app/modules/music_player/music_payer_page.dart';
import 'package:music_player/app/modules/splash/splash_binding.dart';
import 'package:music_player/app/modules/splash/splash_page.dart';
import 'package:music_player/app/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.MUSICPLAYER,
      page: () => MusicPlayerPage(),
      binding: MusicPlayerBinding(),
    ),
  ];
}
