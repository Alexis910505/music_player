import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/app/modules/music_player/music_payer_controller.dart';
import 'package:music_player/app/theme/styles_color.dart';

class SkipButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MusicPlayerController>(
      builder: (_) => IconButton(
        splashColor: lightAccentColor,
        highlightColor: Colors.transparent,
        icon: Icon(
          Icons.skip_previous,
          size: 35,
        ),
        color: Color(0xFFDDDDDD),
        onPressed: _.skip,
      ),
    );
  }
}
