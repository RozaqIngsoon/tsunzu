import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDelapan1 extends StatelessWidget {
  const BabDelapan1({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab8_1,bab: 'Variasi Taktik',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 8 : VARIASI TAKTIK
### Dalam perang, seorang jenderal menerima perintahnya dari penguasa, mengumpulkan pasukannya, dan memusatkan pasukannya.
### Ketika berada di daerah sulit, jangan berkemah. Di daerah yang memiliki persimpangan jalan utama, berkolaborasilah dengan sekutu-sekutu kamu. Jangan berlama-lama di posisi yang terlalu terpencil dan berbahaya. Di situasi yang sulit, kamu harus menggunakan tipu daya. Di posisi yang putus asa, kamu harus bertempur.
### Ada jalan yang tidak boleh diikuti, pasukan yang tidak boleh diserang, kota yang tidak boleh dikepung, posisi yang tidak boleh diperdebatkan, perintah dari penguasa yang tidak harus ditaati.
### Jenderal yang benar-benar memahami keuntungan yang menyertai variasi 
''';
