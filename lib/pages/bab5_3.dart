import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabLima3 extends StatelessWidget {
  const BabLima3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab5_3,bab: 'Energi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Tidak lebih dari lima rasa utama (asam, pedas, asin, manis, pahit), namun kombinasi dari rasa-rasa ini menghasilkan lebih banyak citarasa daripada yang pernah bisa dicicipi.
### Dalam pertempuran, tidak ada lebih dari dua metode serangan - langsung dan tidak langsung; namun kedua metode ini dalam kombinasi melahirkan serangkaian manuver yang tak terbatas.
### Metode langsung dan tidak langsung saling mengarahkan satu sama lain bergantian. Ini seperti bergerak dalam lingkaran - Anda tidak pernah mencapai akhir. Siapa yang bisa menghabiskan kemungkinan kombinasinya?
### Serangan pasukan adalah seperti laju arus deras yang bahkan akan menggulung batu-batu dalam alirannya.
''';
