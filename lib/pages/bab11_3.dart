import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas3 extends StatelessWidget {
  const BabSebelas3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_3,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Wilayah yang hanya dapat dicapai melalui ngarai sempit,dan kamu hanya dapat mundur melalui jalan-jalan berliku, sehingga sejumlah kecil musuh sudah cukup untuk menghancurkan sejumlah besar pasukanmu, disebut sebagai situasi terkepung.
### Situasi di mana kita hanya dapat diselamatkan dari kehancuran dengan segera bertempur, disebut sebagai situasi putus asa.
### Pada situasi tumpang-tindih, maka jangan bertempur. Pada situasi mudah, jangan berhenti. Pada situasi pertentangan, jangan menyerang.
### Pada situasi terbuka, sebaiknya tidak mencoba menghalangi jalan musuh. Pada situasi persimpangan jalan, disarankan untuk bergabung dengan sekutu-sekutumu.
### Di situasi serius, kumpulkan rampasan. Di situasi sulit, terus maju dengan tekun.

''';