import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTigaBelas3 extends StatelessWidget {
  const BabTigaBelas3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab13_3,bab: 'Penggunaan Mata-Mata',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### 
### Menggunakan MATA-MATA LOKAL berarti mempekerjakan jasa penduduk dari suatu wilayah.
### Menggunakan MATA-MATA INTERNAL, menggunakan pejabat-pejabat dari pihak musuh.
### Menggunakan MATA-MATA YANG BERPALING, mendapatkan mata-mata musuh dan menggunakannya untuk kepentingan kita sendiri.
### Menggunakan MATA-MATA YANG BERKORBAN, melakukan beberapa hal secara terbuka untuk tujuan tipuan, dan membiarkan mata-mata kita mengetahuinya dan melaporkannya kepada musuh.
''';