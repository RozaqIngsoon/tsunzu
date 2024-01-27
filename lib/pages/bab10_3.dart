import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
            NoHalaman(pages: pages,itemOfPages:bab10_3,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### dengan keuntungan.
### Terkait dengan ”Medan jalur sempit”, jika kamu dapat mendudukinya lebih dulu, jaga dengan kuat dan tunggu kedatangan musuh.
### Jika pasukan musuh lebih dulu menduduki ”Medan jalur sempit” dan dijaga dengan kuat, jangan mengejar mereka. Namun, jika medan itu dijaga dengan lemah, kamu bisa mengejarnya.
### Mengenai “Medan ketinggian curam”, jika kamu lebih dulu daripada lawan kamu, kamu harus menduduki tempat yang lebih tinggi dan terkena matahari, dan menunggu dia datang.
### Jika musuh telah mendudukinya sebelum kamu, jangan mengikutinya, tetapi mundurlah dan coba memancingnya menjauh.
### Jika kamu berada pada jarak yang jauh dari musuh, dan kekuatan kedua

''';
