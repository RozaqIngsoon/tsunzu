import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTujuh7 extends StatelessWidget {
  const BabTujuh7({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab7_7,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### perang bisa kehilangan ketenangannya.
### Semangat seorang prajurit paling tinggi di pagi hari; di tengah hari semangatnya mulai meredup; dan saat petang, pikirannya hanya terfokus untuk kembali ke perkemahan.
### Seorang jenderal yang cerdas, oleh karena itu, menghindari menghadapi sebuah pasukan ketika semangatnya masih tinggi, tetapi menyerangnya saat pasukan itu merasa malas dan cenderung untuk kembali. Inilah seni memahami perasaan pasukan.
### Menunggu dengan disiplin dan tenang untuk melihat kemunculan kekacauan dan kegemparan di antara musuh: itulah seni menjaga ketenangan diri.
### Berada dekat dengan tujuan sementara musuh masih jauh darinya, menunggu dengan tenang sementara musuh sedang berjuang dan
''';
