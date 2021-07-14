import 'package:flutter/cupertino.dart';

class DemoSong {
  final String audioUrl;
  final String albumArtUrl;
  final String songTitle;
  final String artist;

  DemoSong({
    @required this.albumArtUrl,
    @required this.audioUrl,
    @required this.songTitle,
    @required this.artist,
  });
}
