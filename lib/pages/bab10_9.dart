import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSepuluh9 extends StatelessWidget {
  const BabSepuluh9({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab10_9,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Jika kita tahu bahwa musuh dapat diserang, dan juga tahu bahwa pasukan kita siap untuk menyerang, tetapi kita tidak menyadari bahwa kondisi medan membuat pertempuran tidak mungkin dilakukan, kita baru mencapai setengah perjalanan menuju kemenangan.
### Oleh karena itu, seorang prajurit berpengalaman, begitu ia bergerak, tidak pernah bingung; begitu ia telah membongkar perkemahannya, ia tidak pernah kebingungan.
### Maka ada pepatah: Jika kamu tahu musuh dan tahu dirimu sendiri, kemenanganmu tidak akan diragukan; jika kamu tahu Surga dan tahu Bumi, kamu dapat membuat kemenanganmu sempurna.

''';
