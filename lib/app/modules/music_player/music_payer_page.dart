import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/app/modules/music_player/local_widget/button_controls.dart';
import 'package:music_player/app/modules/music_player/local_widget/radial_seek_bar.dart';
import 'package:music_player/app/modules/music_player/local_widget/visualizer_painter.dart';
import 'package:music_player/app/modules/music_player/music_payer_controller.dart';
import 'package:music_player/app/theme/styles_color.dart';

class MusicPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MusicPlayerController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: darkAccentColor,
            onPressed: () {
              _.toBack();
              Get.back();
            },
          ),
          title: Text(
            'Liontude',
            style: TextStyle(color: darkAccentColor),
          ),
          // actions: [
          //   IconButton(
          //     icon: Icon(Icons.menu),
          //     color: darkAccentColor,
          //     onPressed: () {},
          //   ),
          // ],
        ),
        body: Column(
          children: [
            // Seek bar
            Expanded(
              child: RadialSeekBar(),
            ),
            // Visualizer
            // Obx(
            //   () => Container(
            //     width: double.infinity,
            //     height: 125.0,
            //     child: CustomPaint(
            //       painter: VisualizerPainter(
            //         fft: _.fft,
            //         height: 125,
            //         color: accentColor,
            //       ),
            //     ),
            //   ),
            // ),

            // Song tritle, artist name, and controls
            ButtonControls()
          ],
        ),
      ),
    );
  }
}
