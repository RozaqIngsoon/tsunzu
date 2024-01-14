import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDelapan3 extends StatelessWidget {
  const BabDelapan3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab8_3,bab: 'Variasi Taktik',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### menghancurkan mereka; dan ganggu mereka, dan pertahankan mereka terus-menerus terlibat; tawarkan rayuan yang menggoda, dan buat mereka bergerak cepat ke titik tertentu.
### Seni perang mengajarkan kita untuk tidak mengandalkan kemungkinan musuh tidak datang, tetapi pada kesiapan kita untuk menerima serangan mereka; bukan pada peluang mereka tidak menyerang, tetapi lebih pada kenyataan bahwa kita telah membuat posisi kita tidak dapat diserang.
### Ada lima kesalahan berbahaya yang dapat memengaruhi seorang jenderal:
1)	#### kekejaman, yang mengarah pada kehancuran;
2)	#### pengecut, yang mengarah pada penangkapan;
3)	#### kemarahan yang tergesa-gesa, yang bisa diprovokasi oleh penghinaan;
''';
