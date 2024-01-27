import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSepuluh8 extends StatelessWidget {
  const BabSepuluh8({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab10_8,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Perlakukan tentara kamu seperti anak-anak kamu, dan mereka akan mengikuti kamu ke lembah terdalam; pandanglah mereka sebagai putra-putra kamu yang tercinta, dan mereka akan tetap setia kepada kamu bahkan hingga kematian.
### Namun, jika kamu bersikap lunak tetapi tidak mampu membuat otoritas kamu dihormati; baik hati tetapi tidak mampu menegakkan perintah kamu; dan juga tidak mampu meredakan kerusuhan: maka tentara kamu harus diibaratkan seperti anak-anak manja; mereka tidak berguna untuk tujuan praktis apa pun.
### Jika kita tahu bahwa pasukan kita siap untuk menyerang, tetapi kita tidak menyadari bahwa musuh tidak dapat diserang, kita baru mencapai setengah perjalanan menuju kemenangan.
### Jika kita tahu bahwa musuh dapat
''';
