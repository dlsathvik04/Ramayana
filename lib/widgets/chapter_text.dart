import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/chapter.dart';

class ChapterText extends StatelessWidget {
  final Chapter chapter;
  const ChapterText({super.key, required this.chapter});

  Future<String> loadAsset() async {
    return rootBundle.loadString(chapter.textPath);
  }

  @override
  Widget build(context) {
    return FutureBuilder<String>(
        future: loadAsset(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: snapshot.hasData
                          ? Text(
                              snapshot.data!,
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.justify,
                            )
                          : const Center(
                              child: CircularProgressIndicator(),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
