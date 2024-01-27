import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSatu4 extends StatelessWidget {
  const BabSatu4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab1_4,bab: 'Perencanaan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Pertanyaan-pertanyaan ini memberikan kerangka untuk menilai dan membandingkan pemimpin, jenderal, keuntungan strategis, disiplin, kekuatan pasukan, pelatihan, dan konsistensi di antara dua belah pihak.
### Untuk berhasil dalam perang, seseorang sebaiknya menyesuaikan rencananya berdasarkan keuntungan yang dapat diperoleh. Perang sering melibatkan tipu daya. Oleh karena itu, saat kita memiliki kesempatan menyerang, sebaiknya kita membuat diri terlihat tidak terlalu kuat; ketika menggunakan kekuatan, kita sebaiknya terlihat tidak terlalu aktif. Jika kita berada dekat, kita seharusnya membuat musuh percaya bahwa kita jauh; jika kita berada jauh, kita sebaiknya membuat musuh percaya bahwa kita dekat. Menawarkan umpan untuk memancing musuh dapat menjadi taktik yang baik. Jika kita berhasil menipu musuh, maka kita dapat menghancurkannya. Jika musuh merasa
''';
