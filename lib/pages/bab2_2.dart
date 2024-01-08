import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
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
### Selanjutnya, jika kampanye berlangsung lama, sumber daya negara tidak akan sebanding dengan beban yang ditanggung.
### Sekarang, ketika senjata Anda tumpul, semangat Anda meredup, kekuatan Anda habis, dan harta Anda telah dikeluarkan, pemimpin lain akan muncul untuk memanfaatkan situasi terdesak Anda. Pada saat itu, tidak ada seorang pun, seberapa bijak pun, yang akan dapat menghindari konsekuensi yang harus terjadi.
### Demikian pula, meskipun kita pernah mendengar tentang kecerobohan dalam perang, kecerdikan tidak pernah terlihat terkait dengan penundaan yang lama.
### Tidak ada contoh sebuah negara yang mendapat manfaat dari perang yang berkepanjangan.
### Hanya seseorang yang sepenuhnya mengenal kejahatan perang yang 

''';
