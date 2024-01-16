import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSembilan4 extends StatelessWidget {
  const BabSembilan4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab9_4,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### berantakan, rawa-rawa, dan celah-celah harus segera ditinggalkan dan tidak mendekat.
### Sementara kita menjauhi tempat-tempat seperti itu, kita seharusnya membuat musuh mendekatinya; ketika kita berhadapan dengan mereka, kita harus membiarkan musuh memilikinya di belakangnya.
### Jika di sekitar perkemahan Anda terdapat daerah berbukit, kolam yang dikelilingi oleh rumput air, cekungan  berisi alang-alang, atau hutan dengan semak belukar yang lebat, mereka harus dengan hati-hati dicari dan diperiksa; karena ini adalah tempat-tempat di mana orang-orang bersembunyi atau mata-mata licik mungkin bersembunyi.
### Ketika musuh berada dalam jarak dekat dan tetap diam, ia mengandalkan kekuatan alami posisinya.

''';
