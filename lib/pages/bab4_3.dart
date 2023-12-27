import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEmpat3 extends StatelessWidget {
  const BabEmpat3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab4_3,bab: 'Taktik',)
          ],
        ),
      ),
      floatingActionButton: menu(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}

const String teks = '''
### "Bagus sekali!”
### Mengangkat sehelai rambut bukanlah tanda kekuatan besar; melihat matahari dan bulan bukanlah tanda penglihatan tajam; mendengar suara guntur bukanlah tanda kepekaan telinga.
### Apa yang disebut orang-orang tua sebagai pejuang yang cerdas adalah mereka yang tidak hanya menang, tetapi juga unggul dalam kemenangan dengan mudah.
### Oleh karena itu, kemenangannya tidak memberinya reputasi kebijaksanaan atau pengakuan atas keberanian.
### Dia memenangkan pertempurannya dengan tidak membuat kesalahan. Tidak membuat kesalahan adalah yang membentuk kepastian kemenangan, karena itu berarti mengalahkan musuh yang sudah kalah.

''';
