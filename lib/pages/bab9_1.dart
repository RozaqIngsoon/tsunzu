import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSembilan1 extends StatelessWidget {
  const BabSembilan1({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab9_1,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 9 : PERGERAKAN PASUKAN
### Sekarang kita sampai pada pertanyaan tentang perkemahan tentara dan pengamatan tanda-tanda musuh. 
### Lewati cepat-cepat gunung dan tetap di sekitar lembah-lembah. Bermarkaslah di tempat tinggi, menghadap matahari. Jangan mendaki puncak gunung untuk bertempur. Itulah beberapa hal tentang perang di pegunungan.
### Setelah menyeberangi sungai, kamu sebaiknya menjauh dari sungai tersebut. Ketika pasukan penyerang menyeberangi sungai dalam pergerakannya, jangan maju untuk menemui mereka di tengah aliran sungai. Lebih baik biarkan setengah pasukan mereka menyeberang, lalu baru kamu melakukan serangan
### Tempatkan kapal kamu lebih tinggi dari kapal musuh dan menghadap
''';
