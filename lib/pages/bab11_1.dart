import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
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
### Seni perang mengenali sembilan variasi medan pertempuran: 
1)	#### Medan tumpang-tindih.
2)	#### Medan mudah.
3)	#### Medan pertentangan.
4)	#### Medan terbuka.
5)	#### Medan persimpangan jalan.
6)	#### Medan serius.
7)	#### Medan sulit.
8)	#### Medan terkepung.
9)	#### Medan putus asa.
### Saat seorang pemimpin berperang di wilayahnya sendiri, itu dapat disebut sebagai medan pertempuran yang bersifat tumpang-tindih.
### Ketika ia telah memasuki wilayah musuh, tetapi belum terlalu jauh, itu dapat dianggap sebagai medan pertempuran yang mudah.
### Wilayah yang, jika dikuasai, akan

''';