import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            //NoHalaman(pages: pages,itemOfPages:bab8_4,bab: 'Variasi Taktik',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### ini adalah lima kesalahan utama seorang jenderal yang dapat merugikan dalam mengatur perang.
### Ketika sebuah pasukan mengalami kekalahan dan pemimpinnya tewas, penyebabnya pasti dapat ditemukan di antara kelima kesalahan berbahaya ini. Mari kita jadikan mereka sebagai bahan refleksi.

''';
