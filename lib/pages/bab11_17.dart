import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas17 extends StatelessWidget {
  const BabSebelas17({super.key});

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
            //NoHalaman(pages: pages,itemOfPages:bab11_17,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### apa yang dia sayangi, dan dengan bijaksana merencanakan waktu kedatangannya di medan perang.
### Berjalanlah sesuai dengan aturan yang telah ditetapkan, dan sesuaikan diri dengan musuh sampai kamu dapat melancarkan pertempuran yang menentukan.
### Pada awalnya, tunjukkan sikap malu-malu seperti seorang gadis, sampai musuh memberikan kesempatan; setelah itu tirulah kecepatan seekor kelinci yang sedang berlari, dan pada saat itu sudah terlambat bagi musuh untuk melawanmu.

''';