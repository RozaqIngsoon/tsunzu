import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas2 extends StatelessWidget {
  const BabSebelas2({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_2,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Wilayah di mana kedua belah pihak memiliki kebebasan bergerak disebut sebagai situasi terbuka.
### Wilayah yang menjadi kunci untuk tiga negara yang berdekatan, sehingga siapa yang mendudukinya pertama kali akan memiliki sebagian besar Kekaisaran di bawah kendalinya, disebut sebagai situasi persimpangan jalan.
### Ketika pasukan telah berhasil menembus ke jantung wilayah musuh, meninggalkan sejumlah kota yang diperbentengi di belakangnya, itu dapat dianggap sebagai situasi yang kritis atau serius.
### Hutan pegunungan, lereng yang terjal, rawa-rawa, dan medan yang sulit dilewati disebut sebagai situasi sulit.

''';