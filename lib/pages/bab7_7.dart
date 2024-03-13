import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            //NoHalaman(pages: pages,itemOfPages:bab7_7,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### perasaan pasukan.
### Menunggu dengan disiplin dan tenang untuk melihat kemunculan kekacauan dan kegemparan di antara musuh: itulah seni menjaga ketenangan diri.
### Berada dekat dengan tujuan sementara musuh masih jauh, menunggu dengan tenang ketika musuh masih berjuang dan berusaha, merasa kenyang sementara musuh kelaparan: itulah seni menjaga kekuatan.
### Tidak menghentikan musuh yang benderanya dalam keadaan sempurna, tidak menyerang pasukan yang disusun dengan tenang dan penuh keyakinan: itulah seni memahami keadaan.
### Menyerang musuh di atas gunung atau menyerangnya ketika turun dari gunung adalah tindakan militer yang tidak disarankan.
### Hindari mengejar musuh yang berpura-pura melarikan diri; jangan menyerang pasukan yang penuh semangat.
''';
