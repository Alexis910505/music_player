import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/app/modules/music_player/music_payer_controller.dart';
import 'package:music_player/app/theme/styles_color.dart';

class PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MusicPlayerController>(
      builder: (_) => Obx(
        () {
          IconData icon;
          Function onPressed;
          if (_.hearSong == Playing.play) {
            icon = Icons.pause;
            onPressed = _.pause;
          }
          if (_.hearSong == Playing.pause ||
              _.hearSong == Playing.completed ||
              _.hearSong == Playing.stop ||
              _.hearSong == null) {
            icon = Icons.play_arrow;
            onPressed = _.play;
          }
          return RawMaterialButton(
              shape: CircleBorder(),
              fillColor: Color(0xFFDDDDDD),
              splashColor: lightAccentColor,
              highlightColor: lightAccentColor.withOpacity(.5),
              elevation: 10,
              highlightElevation: 5,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  icon,
                  color: darkAccentColor,
                  size: 35,
                ),
              ),
              onPressed: onPressed);
        },
      ),
    );
  }
}
