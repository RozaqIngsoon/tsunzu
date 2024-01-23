import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
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
### cara ini, mereka akan menjadi mata-mata yang berpaling dan tersedia untuk melayani kita.
### Melalui informasi yang dibawa oleh mata-mata yang sudah berpaling, kita dapat memperoleh dan menggunakan mata-mata lokal dan internal.
### Berkat informasinya, kita dapat menyebabkan mata-mata yang berkorban untuk membawa kabar palsu kepada musuh.
### Akhirnya, berkat informasinya, mata-mata yang selamat dapat digunakan pada kesempatan yang ditentukan.
### Tujuan utama dari mata-mata dalam semua lima varietasnya adalah pengetahuan tentang musuh; dan pengetahuan ini hanya dapat diperoleh, pada awalnya, dari mata-mata yang terkonversi. Oleh karena itu, sangat penting bahwa mata-mata yang terkonversi diperlakukan dengan sangat murah hati.

''';