import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTigaBelas4 extends StatelessWidget {
  const BabTigaBelas4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab13_4,bab: 'Penggunaan Mata-Mata',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Oleh karena itu, tidak ada seorang pun di seluruh pasukan yang memiliki hubungan lebih intim yang harus dipertahankan selain dengan mata-mata. Tidak seorang pun harus diberi penghargaan yang lebih besar. Tidak ada pekara lain yang boleh menjaga kerahasiaan lebih besar selain dengan mata-mata.
### Mata-mata tidak dapat digunakan dengan baik tanpa kecerdasan intuisi tertentu.
### Mereka tidak dapat dikelola dengan baik tanpa kebaikan hati dan kejujuran.
### Tanpa kecerdasan pikiran yang halus, seseorang tidak dapat memastikan kebenaran laporan mereka.
### Bersikaplah halus! bersikaplah halus! dan gunakan mata-matamu untuk segala jenis urusan.
### Jika berita rahasia bocor oleh seorang mata-mata sebelum waktunya, dia harus dihukum mati bersama dengan 

''';