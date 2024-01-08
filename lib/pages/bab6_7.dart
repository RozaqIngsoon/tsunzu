import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEnam7 extends StatelessWidget {
  const BabEnam7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          // color:Color(0xff1d2031) ,
          color: Colors.blueGrey
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container(
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:bab6_7,bab: 'Titik Lemah & Kuat',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Meskipun musuh lebih kuat dalam jumlah, kita dapat mencegahnya untuk berperang. Merencanakan agar dapat mengetahui rencananya dan kemungkinan keberhasilannya.
### Bangkitkan dia, dan pelajari prinsip kegiatannya atau ketidakaktifannya.
### Dalam membuat taktik, puncak tertinggi yang bisa Anda capai adalah menyembunyikannya; sembunyikan disposisi Anda, dan Anda akan aman dari mata-mata yang paling licik, dari rencana yang paling bijak.
### Bagaimana kemenangan dapat dihasilkan dari taktik musuh mereka sendiri - itulah yang tidak bisa dimengerti oleh banyak orang.
### Semua orang dapat melihat taktik dengan mana saya menaklukkan, tetapi yang tidak bisa dilihat oleh siapa pun adalah strategi dari mana kemenangan berkembang.

''';
