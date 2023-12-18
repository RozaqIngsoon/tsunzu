import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:bab3_2,bab: 'Strategi',)
          ],
        ),
      ),
    );
  }
}

const String teks = '''
### adalah mengepung kota berdinding.
### Aturan yang ada adalah, jangan mengepung kota berdinding jika memungkinkan untuk dihindari. Persiapan perisai dinding, tempat perlindungan bergerak, dan berbagai alat-alat perang akan memakan waktu tiga bulan penuh; dan menumpuk gundukan-gundukan di depan dinding akan memakan waktu tiga bulan lagi.
### Jenderal yang tidak mampu mengendalikan kemarahannya akan memerintahkan pasukannya menyerang seperti semut yang berkerumun, dengan akibat bahwa sepertiga pasukannya tewas, sementara kota masih tetap tidak terambil. Begitulah dampak buruk dari pengepungan.
### Oleh karena itu, pemimpin yang terampil menundukkan pasukan musuh tanpa pertempuran; dia merebut kota mereka tanpa mengepungnya; dia menggulingkan 
''';
