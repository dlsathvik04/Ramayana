import 'package:flutter/material.dart';
import 'package:ramayana/providers/chapter_provider.dart';
import 'package:ramayana/widgets/chapter_tile.dart';

class ContentsPage extends StatelessWidget {
  const ContentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final chapters = ChapterProvider.chapters;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore Ramayana",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
        itemBuilder: (context, index) => ChapterTile(chapter: chapters[index]),
        itemCount: chapters.length,
      )),
    );
  }
}
