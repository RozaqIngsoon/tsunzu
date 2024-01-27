import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTiga1 extends StatelessWidget {
  const BabTiga1({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab3_1,bab: 'Strategi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 3 : STRATEGI
### Dalam seni perang, hal terbaik adalah merebut negara musuh tanpa merusaknya; menghancurkannya bukanlah pilihan terbaik. Demikian juga, lebih baik merebut seluruh pasukan daripada menghancurkannya, merebut resimen, pasukan kecil, atau kompi secara utuh.
### Oleh karena itu, keunggulan tertinggi bukanlah dalam berperang dan menaklukkan setiap pertempuran; tetapi, keunggulan tertinggi terletak pada cara meruntuhkan perlawanan musuh tanpa harus bertempur.
### Dengan begitu, bentuk kepemimpinan tertinggi seorang jenderal adalah menggagalkan rencana musuh. Langkah terbaik selanjutnya adalah mencegah pasukan musuh untuk bersatu, diikuti dengan menyerang pasukan musuh di medan. Kebijakan terburuk dari semuanya adalah
''';
