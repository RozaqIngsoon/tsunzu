import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
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
### beragam cita rasa yang tak terbatas.
### Dalam pertempuran, hanya ada dua metode serangan: langsung dan tidak langsung. Namun, kombinasi keduanya menciptakan beragam manuver yang tak terbatas.
### Metode langsung dan tidak langsung saling mengarahkan satu sama lain bergantian. Ini seperti bergerak dalam lingkaran - kamu tidak pernah mencapai akhir. Siapa yang bisa menghabiskan kemungkinan kombinasinya?
### Serangan pasukan ibarat arus deras yang mampu menggulung batu-batu di jalurnya.
### Kualitas keputusan seperti serangan tepat waktu seekor falcon* yang memungkinkannya menyerang dan menghancurkan mangsanya.
### Oleh karena itu, pejuang yang baik akan menakutkan dalam serangannya dan cepat dalam pengambilan keputusan.
''';
