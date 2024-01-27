import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDua2 extends StatelessWidget {
  const BabDua2({super.key});

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
              padding: EdgeInsets.only(top: 25),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:bab2_2,bab: 'Peperangan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### sebanding dengan beban yang harus ditanggung.
### Sekarang, ketika senjatamu sudah tumpul, semangatmu meredup, kekuatanmu habis, dan hartamu telah dikeluarkan, pemimpin lain akan muncul untuk memanfaatkan situasi terdesakmu. Pada saat itu, tidak ada seorang pun, seberapa bijak pun, yang akan dapat menghindari konsekuensi yang harus terjadi.
### Demikian pula, meskipun kita pernah mendengar tentang kecerobohan dalam perang, kecerdikan tidak pernah terkait dengan penundaan yang lama.
### Tidak ada contoh sebuah negara yang mendapat manfaat dari perang yang berkepanjangan.
### Hanya seseorang yang sepenuhnya mengenal kejahatan perang yang dapat memahami cara mengatasi yang menguntungkan.

''';
