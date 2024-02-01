import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
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
### Seni perang mengajarkan kita untuk tidak bergantung pada kemungkinan musuh tidak datang, melainkan pada kesiapan kita untuk menghadapi serangan mereka. Ini bukan tentang harapan bahwa mereka tidak akan menyerang, tetapi lebih pada fakta bahwa kita telah membuat posisi kita sulit untuk diserang.
### Ada lima kesalahan berbahaya yang dapat memengaruhi seorang jenderal:
1)	### Kekejaman, yang mengarah pada kehancuran;
2)	### Pengecut, yang mengarah pada penangkapan;
3)	### Mudah marah, yang bisa dipicu oleh penghinaan;
4)	### Kehormatan yang lembut yang sensitif terhadap rasa malu;
5)	### Kelebihan kepedulian terhadap anak buahnya, yang membuatnya rentan terhadap kekhawatiran dan masalah.
''';
