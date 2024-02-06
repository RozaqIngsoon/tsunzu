import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas1 extends StatelessWidget {
  const BabSebelas1({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_1,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 11 : SEMBILAN SITUASI
### Seni perang mengenali sembilan variasi situasi pertempuran: 
1)	### Situasi tumpang-tindih.
2)	### Situasi mudah.
3)	### Situasi pertentangan.
4)	### Situasi terbuka.
5)	### Situasi persimpangan jalan.
6)	### Situasi kritis atau serius.
7)	### Situasi sulit.
8)	### Situasi terkepung.
9)	### Situasi putus asa.
### Saat seorang pemimpin berperang di wilayahnya sendiri, itu dapat disebut sebagai situasi pertempuran yang bersifat tumpang-tindih.
### Ketika ia telah memasuki wilayah musuh, tetapi belum terlalu jauh, itu dapat dianggap sebagai situasi pertempuran yang mudah.
### Wilayah yang, jika dikuasai, akan memberikan keuntungan besar kepada salah satu pihak disebut sebagai situasi pertentangan.

''';