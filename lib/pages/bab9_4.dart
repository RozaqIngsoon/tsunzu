import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
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
### seperti itu, kita seharusnya membuat musuh mendekatinya; ketika kita berhadapan dengan mereka, kita harus membiarkan musuh memiliki tempat-tempat tersebut di belakangnya.
### Jika di sekitar perkemahanmu terdapat daerah berbukit, kolam yang dikelilingi oleh rumput air, cekungan berisi alang-alang, atau hutan dengan semak belukar yang lebat, mereka harus dicari dan diperiksa dengan hati-hati; karena ini adalah tempat-tempat di mana orang-orang bersembunyi atau mata-mata licik mungkin bersembunyi.
### Ketika musuh berada dalam jarak dekat dan tetap diam, ia mengandalkan kekuatan alami posisinya.
### Ketika musuh menjaga jarak dan mencoba memprovokasi pertempuran, dia mengharapkan pihak lain maju.
### Jika tempat perkemahan musuh mudah diakses, dia sedang memberikan umpan.
''';
