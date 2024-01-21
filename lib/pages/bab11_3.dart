import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
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
### Wilayah yang hanya dapat dicapai melalui ngarai sempit, dan kamu hanya dapat mundur melalui jalan-jalan berliku, sehingga sejumlah kecil musuh sudah cukup untuk menghancurkan sejumlah besar pasukanmu, disebut sebagai medan terkepung.
### Medan di mana kita hanya dapat diselamatkan dari kehancuran dengan segera bertempur, disebut sebagai medan putus asa.
### Pada medan tumpang-tindih, maka jangan bertempur. Pada medan mudah, jangan berhenti. Pada medan pertentangan, jangan menyerang.
### Pada medan terbuka, sebaiknya tidak mencoba menghalangi jalan musuh. Pada medan persimpangan jalan, disarankan untuk bergabung dengan sekutu-sekutumu.
### Di medan serius, kumpulkan rampasan. Di medan sulit, terus maju

''';