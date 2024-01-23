import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDelapan4 extends StatelessWidget {
  const BabDelapan4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab8_4,bab: 'Variasi Taktik',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
4)	### kehormatan yang lembut yang sensitif terhadap rasa malu;
5)	### kelebihan kepedulian terhadap anak buahnya, yang membuatnya rentan terhadap kekhawatiran dan masalah.
### Ini adalah lima dosa utama seorang jenderal, yang merusak dalam mengatur perang.
### Ketika sebuah pasukan dikalahkan dan pemimpinnya tewas, penyebabnya pasti akan ditemukan di antara kelima dosa berbahaya ini. Jadikanlah mereka sebagai objek meditasi.


''';
