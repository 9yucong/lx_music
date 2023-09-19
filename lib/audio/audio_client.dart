import 'dart:async';
import 'package:just_audio/just_audio.dart';
import '../common/log.dart';

class AudioClient {
  List<String>? urlList;

  final AudioPlayer _player = AudioPlayer();

  // 当前播放歌曲在歌单中下标
  int get currentIndex => _player.currentIndex ?? 0;

  // 当前播放歌曲总时长（单位：秒）
  int get progressLengthSeconds => _player.duration?.inSeconds ?? 0;

  // 当前播放歌曲播放进度（单位：秒）
  int get progressSeconds => _player.position.inSeconds;

  // 是否正在播放
  bool get playing => _player.playerState.playing;

  // 是否正在加载
  bool get loading =>
      _player.playerState.processingState == ProcessingState.loading ||
      _player.playerState.processingState == ProcessingState.buffering;

  Stream<Duration> get positionStream => _player.positionStream;

  Stream<bool> get playingStream => _player.playingStream;

  play() {
    _player.play();
  }

  pause() {
    _player.pause();
  }

  stop() {
    _player.stop();
  }

  playById(String songId, {int index = 0, int second = 0}) async {
    Log.d('playById songId = $songId');
    play();
  }

  playByUrl(String url) async {
    await _player.setUrl(url);
    play();
  }
}
