import 'package:flutter/material.dart';
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
            // NoHalaman(pages: pages,itemOfPages:bab10_6,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### depan, hasilnya pasti akan menjadi KEKACAUAN dan KEKALAHAN.
### Ini adalah enam cara mendekati kekalahan, yang harus diperhatikan dengan saksama oleh seorang jenderal yang telah mencapai posisi yang bertanggung jawab.
### Bentuk alami dari wilayah dapat menjadi sekutu terbaik bagi seorang prajurit. Namun, kemampuan untuk mengestimasi lawan, mengendalikan kekuatan kemenangan, dan bijaksana dalam menghitung kesulitan, bahaya, dan jarak merupakan ujian bagi seorang jenderal yang hebat.
### Seseorang yang mengetahui hal-hal ini dan menerapkan pengetahuannya dalam pertempuran akan memiliki peluang lebih besar untuk memenangkan pertempuran. Sebaliknya, seseorang yang tidak mengetahuinya atau tidak mengamalkannya kemungkinan besar

''';
