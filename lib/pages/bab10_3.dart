import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSepuluh3 extends StatelessWidget {
  const BabSepuluh3({super.key});

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
            // NoHalaman(pages: pages,itemOfPages:bab10_3,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### keuntungan.
### Terkait dengan ”Medan jalur sempit”, jika kamu dapat mendudukinya lebih dulu, jaga dengan kuat dan tunggu kedatangan musuh.
### Jika pasukan musuh lebih dulu menduduki "Medan jalur sempit" dan dijaga dengan kuat, sebaiknya hindari menyerang mereka. Namun, jika medan itu dijaga dengan lemah, kamu dapat mempertimbangkan untuk melancarkan serangan.
### Mengenai “Medan ketinggian curam”, jika kamu mendahului lawanmu, kamu harus menduduki tempat yang lebih tinggi dan terkena matahari, dan menunggunya datang.
### Jika musuh telah menduduki medan tersebut sebelum kamu, sebaiknya tidak mengikutinya secara langsung, melainkan mundur dan mencoba memancingnya menjauh.
### Jika kamu berada pada jarak yang jauh

''';
