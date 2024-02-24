import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDuaBelas5 extends StatelessWidget {
  const BabDuaBelas5({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab12_5,bab: 'Serangan Dengan Api',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Jika itu menguntungkan bagimu, lakukan langkah maju; jika tidak, tetaplah di tempatmu berada.
### Kemarahan bisa berubah menjadi kebahagiaan seiring waktu; kekesalan bisa digantikan oleh kepuasan.
### Namun, sebuah kerajaan yang telah hancur tidak akan bisa bangkit kembali; begitu juga orang yang telah mati tidak dapat dihidupkan kembali.
### Oleh karena itu, penguasa yang bijaksana adalah orang yang penuh perhaitan, dan jenderal yang baik penuh kewaspadaan. Inilah cara untuk menjaga perdamaian di sebuah negara dan mempertahankan integritas pasukan.

''';