import 'package:flutter/material.dart';
import 'package:ramayana/models/chapter.dart';
import 'package:ramayana/widgets/chapter_audio_player.dart';
import 'package:ramayana/widgets/chapter_text.dart';

class ChapterScreen extends StatelessWidget {
  final Chapter chapter;

  const ChapterScreen({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(chapter.title)),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: ChapterAudioPlayer(chapter: chapter),
              ),
              Expanded(child: ChapterText(chapter: chapter,))
            ],
          ),
        ));
  }
}
