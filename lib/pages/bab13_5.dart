import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTigaBelas5 extends StatelessWidget {
  const BabTigaBelas5({super.key});

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
            //NoHalaman(pages: pages,itemOfPages:bab13_5,bab: 'Penggunaan Mata-Mata',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### orang yang menerima rahasia tersebut.
### Baik itu untuk menghancurkan sebuah pasukan, menyerang sebuah kota, atau membunuh seorang individu, selalu penting untuk memulainya dengan mencari tahu nama-nama pengiring, ajudan, penjaga pintu, dan penjaga pangkalan dari jenderal yang berkuasa. Mata-mata kita harus diberi tugas untuk mencari tahu ini.
### Mata-mata musuh yang datang untuk mengintai kita harus dicari, disogok dengan suap, diperalat, dan diakomodasi dengan nyaman. Dengan cara ini, mereka akan menjadi mata-mata yang berpaling dan bersedia untuk melayani kita.
### Melalui informasi yang dibawa oleh mata-mata yang sudah berpaling, kita dapat memperoleh dan menggunakan mata-mata lokal dan internal.
### Berkat informasinya, kita dapat menciptakan mata-mata yang 

''';