import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTigaBelas1 extends StatelessWidget {
  const BabTigaBelas1({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab13_1,bab: 'Penggunaan Mata-Mata',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 13 : PENGGUNAAN MATA-MATA
### Mengumpulkan pasukan sebanyak seratus ribu orang dan memerintahkan mereka untuk melakukan pergerakan jauh akan menyebabkan kerugian besar bagi rakyat dan menguras sumber daya negara. Pengeluaran harian akan mencapai seribu ons perak. Akan ada kekacauan di dalam negeri dan di luar negeri, dan orang-orang akan rebah kelelahan di jalan-jalan. Hingga tujuh ratus ribu keluarga akan terhambat dalam pekerjaan mereka.
### Seseorang yang bertindak demikian bukanlah pemimpin pasukan, tidak ada bantuan yang berguna bagi pemerintahannya, dan bukanlah ahli kemenangan.
### Dengan demikian, apa yang memungkinkan seorang penguasa bijak dan seorang jenderal yang baik untuk menyerang dan menaklukkan,
''';