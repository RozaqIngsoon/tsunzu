import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDelapan2 extends StatelessWidget {
  const BabDelapan2({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab8_2,bab: 'Variasi Taktik',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### mungkin sangat mengenal konfigurasi negara, tetapi dia tidak akan dapat mengaplikasikan pengetahuannya dengan baik
### Oleh karena itu, dalam rencana seorang pemimpin yang bijak, pertimbangan tentang keuntungan dan kerugian akan dicampurkan bersama.
### Jika kita mempertimbangkan harapan keuntungan dengan cara ini, kita mungkin berhasil melaksanakan bagian penting dari rencana kita.
### Di sisi lain, jika di tengah kesulitan kita selalu siap untuk memanfaatkan keuntungan, kita dapat melepaskan diri dari kesialan.
### Lumpuhkan para pemimpin musuh dengan menghancurkan mereka; ganggu mereka, dan pertahankan keterlibatan mereka secara terus-menerus; tawarkan rayuan yang menggoda, dan dorong mereka untuk bergerak cepat ke titik tertentu.
''';
