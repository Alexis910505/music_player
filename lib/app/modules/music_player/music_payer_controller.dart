import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:music_player/app/data/model/local/songs.dart';
import 'dart:math';
import 'package:music_player/app/utils/fluttery/lib/animations.dart';

enum Playing { play, pause, stop, completed }

class MusicPlayerController extends GetxController {
  final index = Get.arguments;
  PolarCoord _startDragCoord;
  double _startDragPercent;
  double _currentDragPercent;
  RxDouble _progress = 0.0.obs;
  double get progress => _progress.value;
  double get currentDragPercent => _currentDragPercent;

  void onDragStart(PolarCoord coord) {
    _startDragCoord = coord;
    _startDragPercent = _progress.value;
  }

  void onDragUpdate(PolarCoord coord) {
    final dragAngle = coord.angle - _startDragCoord.angle;
    final dragPercent = dragAngle / (2 * pi);

    _currentDragPercent = (_startDragPercent + dragPercent) % 1;
    update();
  }

  void onDragEnd() {
    _progress.value = _currentDragPercent;
    _currentDragPercent = null;
    _startDragCoord = null;
    _startDragPercent = 0.0;
    update();
  }

  @override
  void onInit() {
    initPlayer();
    super.onInit();
  }

  @override
  void onReady() {
    audioCache.fixedPlayer.onPlayerStateChanged.listen((event) {
      if (event == AudioPlayerState.PLAYING) {
        _hearSong.value = Playing.play;
      }
      if (event == AudioPlayerState.PAUSED) {
        _hearSong.value = Playing.pause;
      }
      if (event == AudioPlayerState.COMPLETED) {
        _hearSong.value = Playing.completed;
        if (_song.value < demoPlayList.songs.length - 1) {
          _song.value = _song.value + 1;
          play();
        } else {
          _song.value = 0;
          stop();
        }
      }

      // audioCache.fixedPlayer.onAudioPositionChanged
      //     .listen((event) => _duration.value = event.inMilliseconds.toDouble());
      // audioCache.fixedPlayer.onAudioPositionChanged
      //     .listen((event) => _position.value = event.inMilliseconds.toDouble());
      print('Estado>>>>>>>${_hearSong.value}');
      print('Evento>>>>>>$event');
      return null;
    });
    _fft.value = [for (var i = 0; i < 50; i++) i];
    print(_fft.value);

    super.onReady();
  }

  //! Play Musisc
  var _duration = Duration().obs;
  var _position = Duration().obs;
  AudioPlayer advancedPlayer;
  RxList<int> _fft = List<int>().obs;
  AudioCache audioCache;
  RxInt _song = 0.obs;
  Rx<Playing> _hearSong = Playing.stop.obs;
  Playing get hearSong => _hearSong.value;
  int get song => _song.value;
  Duration get position => _position.value;
  Duration get duration => _duration.value;
  List<int> get fft => _fft.value;

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => _duration.value = d;

    advancedPlayer.positionHandler = (p) => _position.value = p;

    _song.value = index;
    audioCache.load(demoPlayList.songs[song].audioUrl);
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    advancedPlayer.seek(newPos);
  }

  void play() {
    audioCache.play(demoPlayList.songs[song].audioUrl);
  }

  void next() {
    if (_song.value < demoPlayList.songs.length - 1) {
      _song.value = _song.value + 1;
    } else {
      _song.value = 0;
    }
    stop();
    print('Next>>>>${_song.value}');
  }

  void skip() {
    if (_song.value > 0) {
      _song.value = _song.value - 1;
    }
    stop();
    print('Skip>>>>${_song.value}');
  }

  void pause() {
    advancedPlayer.pause();
  }

  void stop() {
    advancedPlayer.stop();
    _duration.value = Duration();
    _position.value = Duration();
    play();
  }

  void toBack() {
    advancedPlayer.stop();
    _duration.value = Duration();
    _position.value = Duration();
  }
}
