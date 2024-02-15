import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas4 extends StatelessWidget {
  const BabSebelas4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_4,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Di situasi terkepung, gunakan strategi. Di situasi putus asa, berjuang.
### Para pemimpin ulung pada masa lalu dikenal karena keahlian mereka dalam menyusup antara garis depan dan belakang musuh. Mereka mencegah kerja sama antara divisi besar dan kecil, menghalangi pasukan terbaik untuk menyelamatkan yang buruk, dan menghambat perwira untuk mengumpulkan kembali pasukan mereka.
### Ketika pasukan musuh bersatu, mereka berhasil menciptakan kekacauan di tengah-tengah mereka.
### Ketika itu menguntungkan bagi mereka, mereka maju; tetapi ketika sebaliknya, mereka berhenti.
### Jika ditanya bagaimana menghadapi pasukan besar musuh yang tersusun rapi dan siap menyerang, saya akan mengatakan: "Mulailah dengan merebut sesuatu yang sangat berharga bagi 

''';