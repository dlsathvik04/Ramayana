// import 'package:flutter/services.dart' show rootBundle;

class Chapter {
  final String title;
  final String fileName;
  final int chapterNo;

  Chapter({required this.title, required this.fileName, required this.chapterNo});

  

  String get textPath{
    return "assets/text/$fileName.txt";
  }

  String get audio {
    return "audio/$fileName.mp3";
  }

  int get chapter {
    return chapterNo;
  }

  String get coverPath{
    return "assets/images/$fileName.png";
  }
}
