import 'dart:math';
import 'package:flutter/material.dart';
import 'package:music_player/app/modules/music_player/local_widget/radial_seek_bar_painter_widget.dart';

class RadialProgressBar extends StatelessWidget {
  final double trackWidth;
  final double progressWidth;
  final double thumbSize;
  final double progressPercent;
  final double thumbPosition;
  final Color trackColor;
  final Color progressColor;
  final Color thumbColor;
  final EdgeInsets outerPadding;
  final EdgeInsets innerPadding;
  final Widget child;

  RadialProgressBar({
    this.progressColor = Colors.black,
    this.progressWidth = 5,
    this.thumbColor = Colors.black,
    this.thumbSize = 10,
    this.trackColor = Colors.grey,
    this.trackWidth = 3,
    this.progressPercent = 0,
    this.thumbPosition = 0,
    this.outerPadding = const EdgeInsets.all(0.0),
    this.innerPadding = const EdgeInsets.all(0.0),
    this.child,
  });

  EdgeInsets _insetsForPainter() {
    final outerThickness = max(
          trackWidth,
          max(
            progressWidth,
            thumbSize,
          ),
        ) /
        2;
    return EdgeInsets.all(outerThickness);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: outerPadding,
      child: CustomPaint(
        foregroundPainter: RadialSeekBarPainter(
          trackWidth: trackWidth,
          trackColor: trackColor,
          progressWidth: progressWidth,
          progressColor: progressColor,
          progressPercent: progressPercent,
          thumbSize: thumbSize,
          thumbColor: thumbColor,
          thumbPosition: thumbPosition,
        ),
        child: Padding(
          padding: _insetsForPainter() + innerPadding,
          child: child,
        ),
      ),
    );
  }
}
