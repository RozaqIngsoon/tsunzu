import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEnam4 extends StatelessWidget {
  const BabEnam4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab6_4,bab: 'Titik Lemah & Kuat',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### digambar di tanah. Yang perlu kita lakukan adalah melemparkan sesuatu yang aneh dan tak dapat dijelaskan di jalannya.
### Dengan mengetahui disposisi musuh dan tetap tidak terlihat, kita dapat menjaga kekuatan kita terkonsentrasi, sementara kekuatan musuh harus terbagi.
### Kita dapat membentuk satu tubuh yang bersatu, sementara musuh harus terbagi menjadi beberapa bagian. Oleh karena itu, akan ada keseluruhan yang berhadapan dengan bagian-bagian terpisah dari keseluruhan, yang berarti kita akan banyak melawan sedikit musuh.
### Dan jika kita mampu menyerang pasukan yang lebih lemah dengan pasukan yang lebih kuat seperti ini, lawan-lawan kita akan dalam keadaan sulit.
### Tempat di mana kita bermaksud untuk 
''';
