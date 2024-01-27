import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
            NoHalaman(pages: pages,itemOfPages:bab4_1,bab: 'Taktik',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 4 : TAKTIK
### Prajurit-prajurit ulung di masa lalu pertama-tama menempatkan diri mereka di luar kemungkinan kekalahan, kemudian menunggu kesempatan untuk mengalahkan musuh.
### Untuk melindungi diri dari kekalahan ada dalam kendali kita sendiri, tetapi kesempatan untuk mengalahkan musuh diberikan oleh musuh itu sendiri.
### Oleh karena itu, prajurit yang baik mampu melindungi dirinya dari kekalahan, tetapi tidak dapat memastikan untuk mengalahkan musuh.
### Maka ada pepatah: Seseorang mungkin TAHU bagaimana cara menaklukkan tanpa mampu MELAKUKANNYA.
### Keamanan dari kekalahan

''';
