import 'package:ramayana/models/chapter.dart';

class ChapterProvider {
  static final List<Chapter> _chapters = [
    Chapter(
      title: "Bala Kaanda",
      chapterNo: 1,
      fileName: "01_BalaKaanda"
    ),
    Chapter(
      title: "Ayodhya Kaanda",
      chapterNo: 2,
      fileName: "02_AyodhyaKaanda"
    ),
    Chapter(
      title: "Aranya Kaanda",
      chapterNo: 3,
      fileName: "03_AranyaKaanda"
    ),
    Chapter(
      title: "Kishkindha Kaanda",
      chapterNo: 4,
      fileName: "04_KishkindhaaKaanda"
    ),
    Chapter(
      title: "Sundara Kaanda",
      chapterNo: 5,
      fileName: "05_SundaraKaanda"
    ),
    Chapter(
      title: "Yuddha Kaanda",
      chapterNo: 6,
      fileName: "06_YuddhaKaanda"
    ),
  ];

  static List<Chapter> get chapters {
    return _chapters;
  }
}
