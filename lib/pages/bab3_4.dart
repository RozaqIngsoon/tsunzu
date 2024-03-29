import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';

import '../shared/markdown_ku.dart';
import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTiga4 extends StatelessWidget {
  const BabTiga4({super.key});

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
              padding: EdgeInsets.only(top: 30),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(teksData:teks ,)
            )),
            NoHalaman(pages: pages,itemOfPages:bab3_4,bab: 'Strategi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### dapat melakukan pertempuran yang keras, pada akhirnya, pasukan yang lebih besar akan dapat menaklukkan pasukan tersebut.
### Jenderal adalah benteng pertahanan suatu negara; jika benteng pertahanan tersebut lengkap di semua titik, negara akan kuat; jika benteng pertahanan tersebut cacat, negara akan lemah.
### Ada tiga cara di mana seorang pemimpin dapat menyebabkan bencana kepada pasukannya :
1) ### Dengan memberi perintah kepada pasukan untuk maju atau mundur, terkadang tanpa menyadari bahwa mereka tidak dapat mengikuti perintah tersebut, hal ini disebut menghambat pasukan.
2) ### Dengan mencoba mengatur pasukan seperti mengurus kerajaan, tanpa memahami kondisi dalam pasukan, hal ini menyebabkan kegelisahan dalam pikiran para prajurit.

''';
