import 'bab.dart';

class ChapterInfo {
  final int chapterNumber;
  final String numberTitle; // e.g., 'Bab Satu'
  final String title;       // e.g., 'Perencanaan'
  final String quote;
  final String imageAsset;
  final int startPageIndex;
  final List<String> contentKeys;

  const ChapterInfo({
    required this.chapterNumber,
    required this.numberTitle,
    required this.title,
    required this.quote,
    required this.imageAsset,
    required this.startPageIndex,
    required this.contentKeys,
  });

  int get totalPages => 1 + contentKeys.length;
}

class BookContent {
  static const int totalPages = 114; // 0: Cover, 1: TOC, 2..111: Chapters, 112: Glossary, 113: Penutup

  static final List<ChapterInfo> chapters = [
    const ChapterInfo(
      chapterNumber: 1,
      numberTitle: 'Bab Satu',
      title: 'Perencanaan',
      quote: '"Seni perang memiliki arti penting yang vital bagi negara"',
      imageAsset: 'assets/no1.png',
      startPageIndex: 2,
      contentKeys: ['bab1_1', 'bab1_2', 'bab1_3', 'bab1_4', 'bab1_5', 'bab1_6'],
    ),
    const ChapterInfo(
      chapterNumber: 2,
      numberTitle: 'Bab Dua',
      title: 'Peperangan',
      quote: '"Tidak ada contoh sebuah negara yang mendapat manfaat dari perang yang berkepanjangan"',
      imageAsset: 'assets/no2.png',
      startPageIndex: 9,
      contentKeys: ['bab2_1', 'bab2_2', 'bab2_3', 'bab2_4', 'bab2_5'],
    ),
    const ChapterInfo(
      chapterNumber: 3,
      numberTitle: 'Bab Tiga',
      title: 'Strategi',
      quote: '"Keunggulan strategi tertinggi terletak pada meruntuhkan perlawanan musuh tanpa harus bertempur"',
      imageAsset: 'assets/no3.png',
      startPageIndex: 15,
      contentKeys: ['bab3_1', 'bab3_2', 'bab3_3', 'bab3_4', 'bab3_5', 'bab3_6'],
    ),
    const ChapterInfo(
      chapterNumber: 4,
      numberTitle: 'Bab Empat',
      title: 'Taktik',
      quote: '"Kesempatan untuk mengalahkan musuh diberikan oleh musuh itu sendiri."',
      imageAsset: 'assets/no4.png',
      startPageIndex: 22,
      contentKeys: ['bab4_1', 'bab4_2', 'bab4_3', 'bab4_4', 'bab4_5'],
    ),
    const ChapterInfo(
      chapterNumber: 5,
      numberTitle: 'Bab Lima',
      title: 'Energi',
      quote: '"Kontrol atas pasukan besar memiliki prinsip yang sama dengan mengendalikan sedikit orang"',
      imageAsset: 'assets/no5.png',
      startPageIndex: 28,
      contentKeys: ['bab5_1', 'bab5_2', 'bab5_3', 'bab5_4', 'bab5_5', 'bab5_6'],
    ),
    const ChapterInfo(
      chapterNumber: 6,
      numberTitle: 'Bab Enam',
      title: 'Titik Lemah dan Kuat',
      quote: '"Pasukan dapat bergerak jauh tanpa kesulitan jika bergerak melalui wilayah di mana musuh tidak berada"',
      imageAsset: 'assets/no6.png',
      startPageIndex: 35,
      contentKeys: ['bab6_1', 'bab6_2', 'bab6_3', 'bab6_4', 'bab6_5', 'bab6_6', 'bab6_7', 'bab6_8', 'bab6_9'],
    ),
    const ChapterInfo(
      chapterNumber: 7,
      numberTitle: 'Bab Tujuh',
      title: 'Manuver',
      quote: '"Kemampuan untuk mengubah jalur yang berkelok menjadi lurus, dan mengubah kemalangan menjadi keuntungan."',
      imageAsset: 'assets/no7.png',
      startPageIndex: 45,
      contentKeys: ['bab7_1', 'bab7_2', 'bab7_3', 'bab7_4', 'bab7_5', 'bab7_6', 'bab7_7', 'bab7_8'],
    ),
    const ChapterInfo(
      chapterNumber: 8,
      numberTitle: 'Bab Delapan',
      title: 'Variasi Taktik',
      quote: '"Tawarkan rayuan yang menggoda, dan buat musuh bergerak cepat ke titik tertentu."',
      imageAsset: 'assets/no8.png',
      startPageIndex: 54,
      contentKeys: ['bab8_1', 'bab8_2', 'bab8_3', 'bab8_4'],
    ),
    const ChapterInfo(
      chapterNumber: 9,
      numberTitle: 'Bab Sembilan',
      title: 'Pergerakan Pasukan',
      quote: '"Semua pasukan lebih suka tempat tinggi daripada rendah dan tempat yang terkena matahari daripada tempat yang gelap."',
      imageAsset: 'assets/no9.png',
      startPageIndex: 59,
      contentKeys: ['bab9_1', 'bab9_2', 'bab9_3', 'bab9_4', 'bab9_5', 'bab9_6', 'bab9_7', 'bab9_8', 'bab9_9', 'bab9_10'],
    ),
    const ChapterInfo(
      chapterNumber: 10,
      numberTitle: 'Bab Sepuluh',
      title: 'Medan Pertempuran',
      quote: '"Jika pertempuran pasti akan menghasilkan kemenangan, maka kamu harus bertempur."',
      imageAsset: 'assets/no10.png',
      startPageIndex: 70,
      contentKeys: ['bab10_1', 'bab10_2', 'bab10_3', 'bab10_4', 'bab10_5', 'bab10_6', 'bab10_7', 'bab10_8', 'bab10_9'],
    ),
    const ChapterInfo(
      chapterNumber: 11,
      numberTitle: 'Bab Sebelas',
      title: 'Sembilan Situasi',
      quote: '"Lakukan serbuan di wilayah yang subur untuk memasok pasukan kamu dengan makanan."',
      imageAsset: 'assets/no11.png',
      startPageIndex: 80,
      contentKeys: [
        'bab11_1', 'bab11_2', 'bab11_3', 'bab11_4', 'bab11_5', 'bab11_6', 'bab11_7', 'bab11_8',
        'bab11_9', 'bab11_10', 'bab11_11', 'bab11_12', 'bab11_13', 'bab11_14', 'bab11_15', 'bab11_16', 'bab11_17'
      ],
    ),
    const ChapterInfo(
      chapterNumber: 12,
      numberTitle: 'Bab Dua Belas',
      title: 'Serangan Dengan Api',
      quote: '"Jika itu menguntungkan bagimu, lakukan langkah maju; jika tidak, tetaplah di tempatmu berada."',
      imageAsset: 'assets/no12.png',
      startPageIndex: 98,
      contentKeys: ['bab12_1', 'bab12_2', 'bab12_3', 'bab12_4', 'bab12_5'],
    ),
    const ChapterInfo(
      chapterNumber: 13,
      numberTitle: 'Bab Tiga Belas',
      title: 'Penggunaan Mata-Mata',
      quote: '"Tanpa kecerdasan pikiran yang halus, seseorang tidak dapat memastikan kebenaran laporan mereka."',
      imageAsset: 'assets/no13.png',
      startPageIndex: 104,
      contentKeys: ['bab13_1', 'bab13_2', 'bab13_3', 'bab13_4', 'bab13_5', 'bab13_6', 'bab13_7'],
    ),
  ];

  static ChapterInfo? getChapterForPage(int pageIndex) {
    if (pageIndex < 2 || pageIndex >= 112) return null;
    for (int i = chapters.length - 1; i >= 0; i--) {
      if (pageIndex >= chapters[i].startPageIndex) {
        return chapters[i];
      }
    }
    return null;
  }

  static String getPageTitle(int pageIndex) {
    if (pageIndex == 0) return 'Sampul';
    if (pageIndex == 1) return 'Daftar Isi';
    if (pageIndex == 112) return 'Daftar Istilah';
    if (pageIndex == 113) return 'Halaman Penutup';

    final chapter = getChapterForPage(pageIndex);
    if (chapter == null) return 'Seni Perang';

    if (pageIndex == chapter.startPageIndex) {
      return '${chapter.numberTitle}: ${chapter.title}';
    }
    final subIndex = pageIndex - chapter.startPageIndex;
    return '${chapter.title} ($subIndex/${chapter.contentKeys.length})';
  }

  static String? getMarkdownData(int pageIndex) {
    final chapter = getChapterForPage(pageIndex);
    if (chapter == null) return null;
    if (pageIndex == chapter.startPageIndex) return null; // Cover page

    final keyIndex = pageIndex - chapter.startPageIndex - 1;
    if (keyIndex >= 0 && keyIndex < chapter.contentKeys.length) {
      final key = chapter.contentKeys[keyIndex];
      return dataSunZu[key];
    }
    return null;
  }
}
