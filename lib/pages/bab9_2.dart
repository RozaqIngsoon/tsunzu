import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            //NoHalaman(pages: pages,itemOfPages:bab9_2,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
###  perang di daerah sungai.
### Ketika menyeberangi rawa-rawa garam, fokuslah untuk melewatinya dengan segera, tanpa menunda.
### Jika terpaksa berperang di rawa garam, pastikan kamu memiliki air dan rumput di sekitarmu, dan posisimu memunggungi rumpun pohon. Itulah yang perlu diperhatikan dalam operasi di rawa garam.
### Di daerah kering dan datar, pilih posisi yang mudah diakses dengan tanah yang naik ke sebelah kanan dan di belakangmu, sehingga bahaya berada di depan dan keselamatan berada di belakang. Itulah yang perlu diperhatikan saat berperang di daerah datar.
### Semua pasukan lebih memilih posisi yang tinggi dibanding rendah, dan tempat yang terkena sinar matahari daripada yang gelap.
### Jika kamu merawat pasukan dengan baik dan berkemah di tanah yang keras,
''';
