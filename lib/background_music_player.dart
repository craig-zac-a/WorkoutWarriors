import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class BackgroundMusicPlayer extends StatefulWidget {
  const BackgroundMusicPlayer({Key? key}) : super(key: key);

  @override
  _BackgroundMusicPlayerState createState() => _BackgroundMusicPlayerState();
}

class _BackgroundMusicPlayerState extends State<BackgroundMusicPlayer> {
  late AudioPlayer _player;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _init();
  }

  Future<void> _init() async {
    // Load audio from assets.
    // Ensure your asset is declared in pubspec.yaml.
    await _player.setAsset('assets/music/background_music.mp3');
    _player.setLoopMode(LoopMode.all);
    _player.play();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This widget doesn't need to display anything.
    return const SizedBox.shrink();
  }
}
