import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTiga2 extends StatelessWidget {
  const BabTiga2({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab3_2,bab: 'Strategi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### mengepung kota yang memiliki dinding.
### Aturan yang ada adalah, sebaiknya hindari mengepung kota yang berdinding. Mempersiapkan perisai dinding, tempat perlindungan bergerak, dan berbagai alat perang akan membutuhkan waktu tiga bulan penuh. Serta menumpuk gundukan-gundukan di depan dinding juga akan memakan waktu tiga bulan lagi.
### Seorang jenderal yang tidak bisa mengendalikan kemarahannya akan memerintahkan pasukannya menyerang seperti semut yang berkerumun. Akibatnya, sepertiga pasukannya tewas, tetapi kota masih tetap tidak terambil. Inilah dampak buruk dari pengepungan.
### Oleh karena itu, pemimpin yang terampil dapat menaklukkan pasukan musuh tanpa harus bertempur; dia merebut kota mereka tanpa harus mengepungnya; dia menggulingkan kerajaan mereka tanpa melibatkan 
''';
