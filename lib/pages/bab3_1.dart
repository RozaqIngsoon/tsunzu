import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:bab3_1,bab: 'Strategi',)
          ],
        ),
      ),
    );
  }
}

const String teks = '''
## Bab 3 : STRATEGI
### Dalam seni perang, yang terbaik dari semuanya adalah merebut negara musuh secara utuh dan tak rusak; menghancurkannya bukanlah pilihan yang terbaik. Demikian juga, lebih baik merebut pasukan secara utuh daripada menghancurkannya, merebut resimen, pasukan kecil, atau kompi secara utuh.
### Oleh karena itu, berperang dan menaklukkan dalam semua pertempuran bukanlah keunggulan tertinggi; keunggulan tertinggi terletak pada meruntuhkan perlawanan musuh tanpa harus bertempur.
### Dengan demikian, bentuk tertinggi kepemimpinan jenderal adalah menggagalkan rencana musuh; yang terbaik selanjutnya adalah mencegah penyatuan pasukan musuh; yang selanjutnya adalah menyerang pasukan musuh di medan; dan 

''';
