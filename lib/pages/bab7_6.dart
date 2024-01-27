import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTujuh6 extends StatelessWidget {
  const BabTujuh6({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab7_6,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### dapat terlihat dengan cukup jelas: maka buatlah bendera dan panji-panji.
### Gong dan drum, bendera dan panji-panji adalah alat-alat yang digunakan agar perhatian telinga dan mata pasukan dapat difokuskan pada satu titik tertentu.
### Sehingga pasukan menjadi satu tubuh bersatu, yang membuat mustahil bagi yang berani maju sendirian atau yang pengecut mundur sendirian. Inilah seni mengendalikan massa besar orang.
### Dalam pertempuran malam, gunakanlah api sinyal dan gendang dengan intensitas yang tinggi, dan dalam pertempuran siang, manfaatkanlah bendera dan panji sebagai cara untuk memengaruhi pendengaran dan penglihatan pasukan kamu.
### Seluruh pasukan bisa kehilangan semangatnya; seorang panglima
''';
