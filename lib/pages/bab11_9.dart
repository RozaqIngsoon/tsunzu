import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas9 extends StatelessWidget {
  const BabSebelas9({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_9,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### strategi yang lebih kompleks dan koordinasi yang baik antara pasukan jauh lebih penting daripada hanya mengandalkan peralatan atau teknologi perang semata. Kepercayaan pada taktik dan kemampuan pasukan adalah faktor kunci untuk mencapai kemenangan.
### Prinsip untuk mengelola sebuah pasukan adalah dengan menetapkan standar keberanian yang harus dicapai oleh semua anggota pasukan. Dalam konteks ini, seorang pemimpin militer harus memastikan bahwa semua anggota pasukan memiliki tingkat keberanian yang sama dan mampu memenuhi standar tersebut. Ini menciptakan kesatuan dan kohesi dalam pasukan, yang sangat penting dalam taktik dan kesuksesan militer.
### Cara memanfaatkan yang terbaik dari kedua aspek yang kuat dan lemah - itu adalah pertanyaan yang melibatkan
''';