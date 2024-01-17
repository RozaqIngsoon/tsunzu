import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSepuluh5 extends StatelessWidget {
  const BabSepuluh5({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab10_5,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### berupa PELARIAN dari pasukan tersebut.
### Ketika prajurit biasa terlalu kuat dan perwira mereka terlalu lemah, hasilnya adalah PERLAWANAN. Ketika perwira terlalu kuat dan prajurit biasa terlalu lemah, hasilnya adalah KECURANGAN.
### Ketika perwira tingkat tinggi marah dan tidak patuh, dan saat menghadapi musuh mereka berperang atas dasar rasa kebencian mereka sendiri, sebelum panglima besar dapat menentukan apakah dia berada dalam posisi untuk bertempur atau tidak, hasilnya adalah KEHANCURAN.
### Ketika seorang jenderal, tidak mampu memperkirakan kekuatan musuh, membiarkan pasukan yang lebih lemah berhadapan dengan yang lebih besar, atau melemparkan pasukan yang lemah melawan yang kuat, dan lupa menempatkan tentara terlatih di barisan depan, hasilnya pasti akan

''';
