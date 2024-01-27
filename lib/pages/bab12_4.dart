import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDuaBelas4 extends StatelessWidget {
  const BabDuaBelas4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab12_4,bab: 'Serangan Dengan Api',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### bantuan untuk serangan memperoleh tambahan kekuatan.
### Dengan menggunakan air, musuh dapat dihentikan, tetapi tidak dapat dirampas semua hartanya.
### Sial-lah nasib seseorang yang mencoba memenangkan pertarungannya dan berhasil dalam serangannya tanpa memupuk semangat berusaha; karena hasilnya adalah pemborosan waktu dan stagnasi umum.
### Maka ada pepatah: Penguasa yang bijaksana merencanakan segalanya dengan baik; jenderal yang baik mengembangkan sumber dayanya
### Jangan bergerak kecuali jika kamu melihat keuntungan; jangan menggunakan pasukan kamu kecuali jika ada sesuatu yang bisa didapatkan; jangan bertempur kecuali jika posisinya kritis.

''';