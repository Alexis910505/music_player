import 'dart:math';
import 'package:flutter/material.dart';

class RadialSeekBarPainter extends CustomPainter {
  final double trackWidth;
  final double progressWidth;
  final double thumbSize;
  final double progressPercent;
  final double thumbPosition;
  final Paint trackPaint;
  final Paint progressPaint;
  final Paint thumbPaint;

  RadialSeekBarPainter({
    @required progressColor,
    @required this.progressWidth,
    @required thumbColor,
    @required this.thumbSize,
    @required trackColor,
    @required this.trackWidth,
    @required this.progressPercent,
    @required this.thumbPosition,
  })  : trackPaint = Paint()
          ..color = trackColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = trackWidth,
        progressPaint = Paint()
          ..color = progressColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = progressWidth
          ..strokeCap = StrokeCap.round,
        thumbPaint = Paint()
          ..color = thumbColor
          ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    final outerThickness = max(trackWidth, max(progressWidth, thumbSize));
    Size contrainedSize =
        Size(size.width - outerThickness, size.height - outerThickness);

    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(contrainedSize.width, contrainedSize.height) / 2;
    // Paint track
    canvas.drawCircle(center, radius, trackPaint);

    // Paint progress
    final progressAngle = 2 * pi * progressPercent;
    canvas.drawArc(
      Rect.fromCircle(
        center: center,
        radius: radius,
      ),
      -pi / 2,
      progressAngle,
      false,
      progressPaint,
    );

    // Paint thumb
    final thumbAngle = 2 * pi * thumbPosition - (pi / 2);
    final thumbX = cos(thumbAngle) * radius;
    final thumbY = sin(thumbAngle) * radius;
    final thumbCenter = Offset(thumbX, thumbY) + center;
    final thumbRadius = thumbSize / 2;
    canvas.drawCircle(
      thumbCenter,
      thumbRadius,
      thumbPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
