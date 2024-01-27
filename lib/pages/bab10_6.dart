import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSepuluh6 extends StatelessWidget {
  const BabSepuluh6({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab10_6,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### menjadi KEKACAUAN.
### Ketika seorang jenderal yang tidak mampu memperkirakan kekuatan musuh, membiarkan pasukan yang lebih lemah berhadapan dengan yang lebih besar, atau melemparkan pasukan yang lemah melawan yang kuat, dan mengabaikan untuk menempatkan tentara terlatih di barisan depan, hasilnya pasti akan menjadi KEKALAHAN.
### Ini adalah enam cara mendekati kekalahan, yang harus diperhatikan dengan saksama oleh seorang jenderal yang telah mencapai posisi yang bertanggung jawab.
### Bentuk alami dari wilayah adalah sekutu terbaik bagi seorang prajurit; tetapi kemampuan untuk mengestimasi lawan, mengendalikan kekuatan kemenangan, dan menghitung dengan bijak kesulitan, bahaya, dan jarak merupakan ujian

''';
