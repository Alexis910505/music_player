import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:music_player/app/modules/splash/splash_controller.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: SpinKitChasingDots(
              color: Colors.lightGreenAccent,
              size: 150,
            ),
          )),
    );
  }
}
