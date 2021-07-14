import 'package:flutter/cupertino.dart';
import 'package:music_player/app/data/model/local/demo_song.dart';

class DemoPlayList {
  final List<DemoSong> songs;

  DemoPlayList({
    @required this.songs,
  });
}

final demoPlayList = DemoPlayList(songs: [
  DemoSong(
      albumArtUrl: 'assets/image/song.png',
      audioUrl: 'song/chulo.mp3',
      songTitle: 'Asi Mismo',
      artist: 'El Chulo'),
  DemoSong(
      albumArtUrl: 'assets/image/1.jpg',
      audioUrl: 'song/1.mp3',
      songTitle: '1',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/4.jpg',
      audioUrl: 'song/2.mp3',
      songTitle: '2',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/1.jpg',
      audioUrl: 'song/3.mp3',
      songTitle: '3',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/3.jpg',
      audioUrl: 'song/4.mp3',
      songTitle: '4',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/song.png',
      audioUrl: 'song/5.mp3',
      songTitle: '5',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/2.jpg',
      audioUrl: 'song/6.mp3',
      songTitle: '6',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/1.jpg',
      audioUrl: 'song/7.mp3',
      songTitle: '7',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/4.jpg',
      audioUrl: 'song/8.mp3',
      songTitle: '8',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/song.png',
      audioUrl: 'song/9.mp3',
      songTitle: '9',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/3.jpg',
      audioUrl: 'song/10.mp3',
      songTitle: '10',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/2.jpg',
      audioUrl: 'song/11.mp3',
      songTitle: '11',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/song.png',
      audioUrl: 'song/12.mp3',
      songTitle: '12',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/4.jpg',
      audioUrl: 'song/13.mp3',
      songTitle: '13',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/3.jpg',
      audioUrl: 'song/14.mp3',
      songTitle: '14',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/2.jpg',
      audioUrl: 'song/15.mp3',
      songTitle: '15',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/1.jpg',
      audioUrl: 'song/16.mp3',
      songTitle: '16',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/song.png',
      audioUrl: 'song/17.mp3',
      songTitle: '17',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/2.jpg',
      audioUrl: 'song/18.mp3',
      songTitle: '18',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/song.png',
      audioUrl: 'song/19.mp3',
      songTitle: '19',
      artist: 'unknown'),
  DemoSong(
      albumArtUrl: 'assets/image/3.jpg',
      audioUrl: 'song/20.mp3',
      songTitle: '20',
      artist: 'unknown'),
]);
