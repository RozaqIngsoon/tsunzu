import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEnam9 extends StatelessWidget {
  const BabEnam9({super.key});

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
            //NoHalaman(pages: pages,itemOfPages:bab6_9,bab: 'Titik Lemah & Kuat',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Orang-orang yang dapat menyesuaikan taktik mereka dengan lawan dan berhasil meraih kemenangan dapat dianggap sebagai pemimpin yang memiliki kemampuan bawaan untuk hal tersebut.
### Lima elemen (air, api, kayu, logam, tanah) tidak selalu sama kuatnya; empat musim bergantian satu sama lain. Ada hari-hari pendek dan panjang; bulan memiliki periode surut dan pasang.
''';
