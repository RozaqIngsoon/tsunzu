import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEnam3 extends StatelessWidget {
  const BabEnam3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab6_3,bab: 'Titik Lemah & Kuat',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Wahai seni ilahi tentang kehalusan dan kerahasiaan! MelaluiMu kami belajar untuk tidak terlihat, melaluiMu kami belajar tidak terdengar; dan oleh karena itu kita dapat mengendalikan nasib musuh dalam genggaman kita.
### kamu dapat maju dan menjadi benar-benar tak terbendung jika kamu menuju titik lemah musuh; kamu dapat mundur dan aman dari pengejaran jika pergerakan kamu lebih cepat daripada musuh.
### Jika kita ingin berperang, musuh dapat dipaksa untuk terlibat dalam pertempuran meskipun dia berlindung di balik tembok tinggi dan parit dalam. Yang perlu kita lakukan adalah menyerang tempat lain yang harus dia selamatkan.
### Jika kita tidak ingin berperang, kita dapat mencegah musuh untuk terlibat dalam pertempuran meskipun garis-garis perkemahan kita hanya

''';
