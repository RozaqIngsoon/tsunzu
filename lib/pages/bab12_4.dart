import 'package:flutter/material.dart';
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
            //NoHalaman(pages: pages,itemOfPages:bab12_4,bab: 'Serangan Dengan Api',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Sayang sekali bagi seseorang yang mencoba menang dalam pertarungannya dan berhasil dalam serangannya tanpa semangat berusaha; karena itu hanya akan membuang waktu dan membuat kemajuan terhenti.
### Maka ada pepatah: Penguasa yang bijaksana merencanakan segalanya dengan baik; jenderal yang baik mengembangkan sumber dayanya
### Jangan bergerak kecuali jika kamu melihat keuntungan; jangan menggunakan pasukanmu kecuali jika ada sesuatu yang bisa didapatkan; jangan bertempur kecuali jika posisinya kritis.
### Tidak seharusnya seorang pemimpin mengirim pasukannya ke medan perang hanya untuk memuaskan kemarahan pribadinya; begitu juga, seorang jenderal seharusnya tidak memerangi pertempuran hanya karena kekesalannya.

''';