import 'package:flutter/material.dart';
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
### tidak mampu membuat otoritasmu dihormati; baik hati tetapi tidak mampu menegakkan perintahmu; dan juga tidak mampu meredakan kerusuhan: maka tentaramu harus diibaratkan seperti anak-anak manja; mereka tidak berguna untuk tujuan praktis apa pun.
### Jika kita tahu bahwa pasukan kita siap untuk menyerang, tetapi kita tidak menyadari bahwa musuh tidak dapat diserang, kita baru mencapai setengah perjalanan menuju kemenangan.
### Jika kita tahu bahwa musuh dapat diserang, tetapi kita tidak menyadari bahwa pasukan kita tidak siap untuk menyerang, kita baru mencapai setengah perjalanan menuju kemenangan.
### Jika kita tahu bahwa musuh dapat diserang, dan juga tahu bahwa pasukan kita siap untuk menyerang, tetapi kita tidak menyadari bahwa kondisi medan membuat pertempuran tidak mungkin 

''';
