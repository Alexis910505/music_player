import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/app/data/model/local/songs.dart';
import 'package:music_player/app/modules/music_player/music_payer_controller.dart';

class RadialSeekBar extends StatelessWidget {
  final double progress;
  final double seekPercent;
  final Function(double) onSeekRequested;

  RadialSeekBar({
    this.progress = 0.0,
    this.seekPercent = 0.0,
    this.onSeekRequested,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MusicPlayerController>(
      builder: (_) => Center(
        child: Obx(
          () => Container(
            height: 280,
            width: 280,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                    image: AssetImage(demoPlayList.songs[_.song].albumArtUrl),
                    fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
