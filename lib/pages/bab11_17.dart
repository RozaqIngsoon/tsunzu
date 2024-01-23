import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:bab11_17,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Ini disebut kemampuan untuk mencapai suatu hal dengan kecerdikan semata.
### Pada hari Anda mengambil komando, blokir jalur perbatasan, hancurkan catatan resmi, dan hentikan perjalanan para utusan.
### Berdikarilah di ruang dewan, agar Anda dapat mengendalikan situasi.
### Jika musuh meninggalkan pintu terbuka, Anda harus segera masuk.
### Mengalahkan lawan Anda dengan merebut apa yang dia sayangi, dan dengan bijaksana merencanakan waktu kedatangannya di medan perang.
### Berjalanlah sesuai dengan aturan yang telah ditetapkan, dan sesuaikan diri dengan musuh sampai Anda dapat melancarkan pertempuran yang menentukan.
### Pada awalnya, tunjukkan sikap malu-

''';