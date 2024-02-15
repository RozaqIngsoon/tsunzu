import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTigaBelas6 extends StatelessWidget {
  const BabTigaBelas6({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab13_6,bab: 'Penggunaan Mata-Mata',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Melalui informasi yang dibawa oleh mata-mata yang sudah berpaling, kita dapat memperoleh dan menggunakan mata-mata lokal dan internal.
### Berkat informasinya, kita dapat menciptakan mata-mata yang berkorban untuk membawa kabar palsu kepada musuh.
### Akhirnya, berkat informasinya, mata-mata yang selamat dapat digunakan pada kesempatan yang ditentukan.
### Tujuan utama dari mata-mata dalam semua lima varietasnya adalah pengetahuan tentang musuh; dan pengetahuan ini hanya dapat diperoleh, pada awalnya, dari mata-mata yang berpaling. Oleh karena itu, sangat penting bahwa mata-mata yang berpaling diperlakukan dengan sangat baik.

''';