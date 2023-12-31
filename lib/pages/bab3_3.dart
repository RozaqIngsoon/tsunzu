import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTiga3 extends StatelessWidget {
  const BabTiga3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab3_3,bab: 'Strategi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### merebut kota mereka tanpa mengepungnya; dia menggulingkan kerajaan mereka tanpa operasi yang berkepanjangan di medan perang.
### Dengan pasukannya tetap utuh, dia akan bersaing untuk memperebutkan penguasaan atas Kekaisaran, dan dengan demikian, tanpa kehilangan seorang pun, kemenangannya akan lengkap. Ini adalah metode menyerang dengan menggunakan strategi.
### Ini adalah aturan dalam perang, jika pasukan kita sepuluh kali lipat pasukan musuh, maka kita harus mengepungnya; jika lima kali lipat, kita harus menyerangnya; jika dua kali lipat jumlahnya, kita harus membagi pasukan kita menjadi dua bagian.
### Jika jumlahnya seimbang, kita dapat menawarkan pertempuran; jika sedikit lebih rendah dalam jumlah, kita dapat menghindari musuh; jika sangat tidak seimbang dalam segala hal, kita dapat
''';
