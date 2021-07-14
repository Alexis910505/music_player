import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/app/data/model/local/songs.dart';
import 'package:music_player/app/modules/music_player/local_widget/next_button_widget.dart';
import 'package:music_player/app/modules/music_player/local_widget/play_button_widget.dart';
import 'package:music_player/app/modules/music_player/local_widget/skip_button_widget.dart';
import 'package:music_player/app/modules/music_player/music_payer_controller.dart';
import 'package:music_player/app/theme/styles_color.dart';

class ButtonControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MusicPlayerController>(
      builder: (_) => Container(
        width: double.infinity,
        child: Material(
          shadowColor: Color(0x44000000),
          color: accentColor,
          child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 50),
            child: Column(
              children: [
                Obx(
                  () => RichText(
                      text: TextSpan(text: '', children: [
                    TextSpan(
                        text:
                            'Song Title: ${demoPlayList.songs[_.song].songTitle}\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 4,
                            height: 1.5)),
                    TextSpan(
                        text:
                            'Artist Name: ${demoPlayList.songs[_.song].artist}',
                        style: TextStyle(
                            color: Colors.white.withOpacity(.75),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                            height: 1.5)),
                  ])),
                ),
                Obx(() => Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${_.position.inMinutes}:${_.position.inSeconds.remainder(60)}',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Expanded(
                            child: Slider(
                              activeColor: darkAccentColor,
                              inactiveColor: Colors.white,
                              value: _.position.inSeconds.toDouble(),
                              max: _.duration.inSeconds.toDouble(),
                              onChanged: (value) {
                                _.seekToSec(value.toInt());
                              },
                            ),
                          ),
                          Text(
                              '${_.duration.inMinutes}:${_.duration.inSeconds.remainder(60)}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      Spacer(),
                      SkipButton(),
                      Spacer(),
                      PlayButton(),
                      Spacer(),
                      NextButton(),
                      Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
