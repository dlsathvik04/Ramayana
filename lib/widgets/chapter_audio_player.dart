import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:ramayana/models/chapter.dart';

class ChapterAudioPlayer extends StatefulWidget {
  final Chapter chapter;
  const ChapterAudioPlayer({super.key, required this.chapter});

  @override
  State<ChapterAudioPlayer> createState() => _ChapterAudioPlayerState();
}

class _ChapterAudioPlayerState extends State<ChapterAudioPlayer> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  bool _isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool _isLoading = true;

  @override
  void dispose() {
    assetsAudioPlayer.dispose();
    super.dispose();
  }
  @override
  void initState() {
    loadAudio();
    assetsAudioPlayer.currentPosition.listen((newPosition) {
      if (mounted){
        setState(() {
        position = newPosition;
      });
      }
    });

    assetsAudioPlayer.playerState.listen((event) { 
      if (mounted){
        setState(() {
        _isPlaying = (event == PlayerState.play);
      });
      }
    });

    assetsAudioPlayer.realtimePlayingInfos.listen((event) {
      if (mounted){
        setState(() {
        duration = event.duration;
      });
      }
    });


    super.initState();
  }

  Future<void> loadAudio() async {
    assetsAudioPlayer.open(Audio("assets/${widget.chapter.audio}" , metas: Metas(
            title:  widget.chapter.title,
            artist: "Margana Grish Vardhan",
            album: "Ramayana",
            image: MetasImage.asset(widget.chapter.coverPath), //can be MetasImage.network
          ),),
        autoStart: false, showNotification: true);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const CircularProgressIndicator() : ListTile(
                tileColor: Theme.of(context).colorScheme.primaryContainer,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  radius: 35,
                  child: IconButton(
                    icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow_rounded, color: Theme.of(context).colorScheme.primaryContainer,),
                    onPressed: () async {
                      await assetsAudioPlayer.playOrPause();
                    },
                            
                  ),
                ),
                title: Slider(
                  inactiveColor: Theme.of(context).colorScheme.inversePrimary,
                  min: 0,
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  onChanged: (value) async{
                    final newposition = Duration(seconds: value.toInt());
                    await assetsAudioPlayer.seek(newposition);
                  },
                ),
                subtitle: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${position.inMinutes.toInt().toString()}:${(position.inSeconds.toInt() % 60).toString()}"),
                      Text("${duration.inMinutes.toInt().toString()}:${(duration.inSeconds.toInt() % 60).toString()}")
                    ],
                  ),
                ),
              );
  }
}
