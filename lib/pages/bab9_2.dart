import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSembilan2 extends StatelessWidget {
  const BabSembilan2({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab9_2,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### matahari. Jangan bergerak ke arah aliran sungai untuk bertemu musuh. Demikian taktik perang di daerah sungai.
### Ketika menyeberangi rawa-rawa garam, satu-satunya perhatian Anda harus segera melewatinya, tanpa penundaan.
### Jika terpaksa berperang di rawa garam, Anda harus memiliki air dan rumput di dekat Anda, dan pasang punggung Anda ke rumpun pohon. Itu saja untuk operasi di rawa garam.
### Di daerah kering dan datar, pilih posisi yang mudah diakses dengan tanah yang naik ke sebelah kanan dan di belakang Anda, sehingga bahaya berada di depan, dan keselamatan berada di belakang. Itu saja untuk berperang di daerah datar.
### Semua pasukan lebih suka tempat tinggi daripada rendah dan tempat yang terkena matahari daripada

''';
