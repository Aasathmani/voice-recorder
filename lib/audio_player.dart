import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class AudioPlayerPage extends StatefulWidget {
  final String pathToAudio;
  const AudioPlayerPage({super.key, required this.pathToAudio});

  @override
  State<AudioPlayerPage> createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  final _assetsAudioPlayer = AssetsAudioPlayer();

  Future<void> playFunc() async {
    _assetsAudioPlayer.open(
      Audio.file(widget.pathToAudio),
      autoStart: true,
      showNotification: true,
    );
  }

  Future<void> stopPlayFunc() async {
    _assetsAudioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: TextButton(
                onPressed: () {
                  playFunc();
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.play_circle,
                      size: 56,
                    ),
                    Text("Play"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: TextButton(
                onPressed: () {
                  stopPlayFunc();
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.stop_circle_outlined,
                      size: 56,
                    ),
                    Text("Stop"),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 100,
            //   width: 100,
            //   child: TextButton(
            //     onPressed: () {
            //    Navigator.pop(context);
            //     },
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: const [
            //         Icon(Icons.cancel, size: 56,),
            //         Text("Cancel"),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
