import 'package:flutter/material.dart';
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
            //NoHalaman(pages: pages,itemOfPages:bab6_4,bab: 'Titik Lemah & Kuat',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### tak dapat dijelaskan di jalannya.
### Ini merupakan contoh untuk menciptakan ilusi atau kebingungan di jalur musuh. Tindakan ini dimaksudkan untuk membingungkan dan memecah fokus musuh, sehingga mereka terdistraksi dan tidak bersiap untuk pertempuran. Garis perkemahan yang hanya digambar di tanah mewakili kesan palsu atau ilusi yang dapat menciptakan ketidakpastian di benak musuh. 
### Dengan mengetahui disposisi* musuh dan tetap tidak terlihat, kita dapat menjaga kekuatan kita terkonsentrasi, sementara kekuatan musuh harus terbagi.
### Kita dapat bersatu membentuk satu tubuh, sementara musuh terpaksa terbagi menjadi beberapa bagian. Dengan demikian, kita yang utuh akan menghadapi bagian-bagian terpisah dari musuh, membuat pertarungan kita lebih
 
''';
