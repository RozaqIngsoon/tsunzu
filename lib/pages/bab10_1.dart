import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSepuluh1 extends StatelessWidget {
  const BabSepuluh1({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab10_1,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 10 : MEDAN PERTEMPURAN
### Kita dapat membedakan enam jenis medan, yaitu: 
1)	### Medan yang dapat diakses.
2)	### Medan yang rumit.
3)	### Medan yang memungkinkan penundaan.
4)	### Medan jalur sempit. 
5)	### Medan ketinggian curam. 
6)	### Medan yang jauh dari musuh.
### Wilayah yang dapat dilewati dengan bebas oleh kedua belah pihak disebut “Medan yang dapat diakses”.
### Dalam wilayah yang memiliki karakteristik seperti ini, penting untuk menduduki posisi yang tinggi di depan musuh dan terkena sinar matahari. Selain itu, jagalah jalur pasokanmu dengan baik. Dengan cara ini, kamu akan memiliki keunggulan yang baik dalam pertempuran.

''';
