import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            //NoHalaman(pages: pages,itemOfPages:bab8_1,bab: 'Variasi Taktik',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 8 : VARIASI TAKTIK
### Dalam peperangan, seorang jenderal menerima perintah dari penguasa, lalu mengumpulkan dan memusatkan pasukannya.
### Di wilayah sulit, hindari berkemah. Di persimpangan jalan utama, buatlah kolaborasi dengan sekutumu. Jangan tinggal terlalu lama di tempat terpencil dan berbahaya. Saat menghadapi situasi sulit, gunakan tipu daya. Di posisi yang putus asa, tetaplah bertahan.
### Ada jalan yang tidak boleh diikuti, pasukan yang tidak boleh diserang, kota yang tidak boleh dikepung, posisi yang tidak boleh diperdebatkan, perintah dari penguasa yang tidak harus ditaati.
### Jenderal yang benar-benar memahami keuntungan variasi taktik tahu bagaimana mengatur pasukannya.
### Jenderal yang tidak memahami hal ini,
''';
