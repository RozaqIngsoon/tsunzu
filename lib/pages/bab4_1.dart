import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEmpat1 extends StatelessWidget {
  const BabEmpat1({super.key});

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
            //NoHalaman(pages: pages,itemOfPages:bab4_1,bab: 'Taktik',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 4 : TAKTIK
### Prajurit hebat di masa lalu pertama-tama menghindari kemungkinan kekalahan, kemudian menunggu peluang untuk mengalahkan musuh.
### Untuk melindungi diri dari kekalahan, itu ada dalam kendali kita sendiri, tetapi kesempatan untuk mengalahkan musuh diberikan oleh musuh itu sendiri.
### Oleh karena itu, prajurit yang baik dapat melindungi dirinya dari kekalahan, tetapi tidak dapat menjamin kemenangan atas musuh.
### Maka ada pepatah: Seseorang mungkin MENGETAHUI cara menaklukkan tanpa mampu MELAKUKANNYA.
### Keamanan dari kekalahan berarti menggunakan taktik pertahanan, sementara kemampuan untuk mengalahkan musuh berarti mengambil inisiatif menyerang.
### Berdiri dalam posisi defensif
''';
