import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas10 extends StatelessWidget {
  const BabSebelas10({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_10,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### penggunaan yang tepat dari medan.
### Dengan demikian, jenderal yang mahir memimpin pasukannya seolah-olah ia memimpin seorang manusia tunggal, seperti memegang tangan seseorang.
### Tugas seorang jenderal adalah untuk tenang dan dengan demikian memastikan kerahasiaan; jujur dan adil, dan dengan demikian menjaga ketertiban.
### Dia harus mampu membingungkan para perwira dan prajuritnya dengan laporan dan penampilan palsu, dan dengan demikian menjaga mereka dalam keadaan tidak tahu apa-apa.
###	Dengan mengubah susunan dan merubah rencananya, dia membuat musuh tidak memiliki pengetahuan yang pasti. Dengan memindahkan perkemahannya dan mengambil rute berkelok-kelok, dia mencegah musuh untuk mengantisipasi tujuannya.
''';