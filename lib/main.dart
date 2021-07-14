import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/app/modules/splash/splash_binding.dart';
import 'package:music_player/app/modules/splash/splash_page.dart';
import 'package:music_player/app/routes/app_pages.dart';
import 'package:music_player/app/utils/dependency_injection.dart';

void main() {
  DependencyInjection.init();
  runApp(Liontude());
}

class Liontude extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Liontude Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.zoom,
      home: SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
    );
  }
}
