import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            //NoHalaman(pages: pages,itemOfPages:bab4_3,bab: 'Taktik',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Apa yang disebut orang-orang tua sebagai pejuang yang cerdas adalah mereka yang tidak hanya menang, tetapi juga berhasil meraih kemenangan dengan mudah.
### Maka, kemenangannya tidak memberinya reputasi kebijaksanaan atau pengakuan atas keberanian.
### Dia memenangkan pertempurannya dengan tidak membuat kesalahan. Tidak membuat kesalahan adalah yang membentuk kepastian kemenangan, karena itu berarti mengalahkan musuh yang sudah kalah.
### Seorang pejuang yang mahir akan menghindari situasi yang dapat menyebabkan kekalahan dan selalu memanfaatkan peluang untuk mengalahkan musuh.
### Oleh karena itu, dalam perang, seorang ahli strategi yang berprestasi mencari pertempuran setelah mencapai kemenangan, sementara yang
''';
