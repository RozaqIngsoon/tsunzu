import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTujuh8 extends StatelessWidget {
  const BabTujuh8({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab7_8,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### berusaha, merasa kenyang sementara musuh kelaparan: itulah seni menjaga kekuatan.
### Tidak menghentikan musuh yang benderanya dalam keadaan sempurna, tidak menyerang pasukan yang disusun dengan tenang dan penuh keyakinan: itulah seni memahami keadaan.
### Ini adalah aksioma militer untuk tidak maju ke atas gunung melawan musuh, atau melawannya ketika dia turun dari gunung.
### Jangan mengejar musuh yang pura-pura melarikan diri; jangan menyerang tentara yang semangatnya tinggi.
### Jangan menelan umpan yang ditawarkan oleh musuh. Jangan mengganggu tentara yang sedang kembali ke rumah.
### Saat kamu menyelubungi sebuah pasukan, tinggalkanlah jalan keluar

''';
