import 'package:flutter/material.dart';
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
            //NoHalaman(pages: pages,itemOfPages:bab7_6,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### pengecut mundur sendirian. Inilah seni mengendalikan massa besar orang.
### Dalam pertempuran malam, gunakanlah api sinyal dan gendang dengan intensitas tinggi, sementara dalam pertempuran siang, manfaatkanlah bendera dan panji untuk memengaruhi pendengaran dan penglihatan pasukanmu.
### Seluruh pasukan bisa kehilangan semangatnya; seorang panglima perang bisa kehilangan ketenangannya.
### Semangat seorang prajurit paling tinggi di pagi hari; di tengah hari semangatnya mulai meredup; dan saat petang, fokusnya hanya untuk kembali ke perkemahan.
### Seorang jenderal yang cerdas, tidak akan menghadapi pasukan ketika semangatnya masih tinggi. Sebaliknya, ia menyerangnya saat pasukan itu merasa malas dan cenderung untuk kembali. Inilah seni memahami
''';
