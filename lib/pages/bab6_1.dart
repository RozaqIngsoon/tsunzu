import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEnam1 extends StatelessWidget {
  const BabEnam1({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab6_1,bab: 'Titik Lemah & Kuat',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 6 : TITIK LEMAH DAN KUAT
### Siapa pun yang pertama kali berada di medan perang dan menunggu kedatangan musuh akan segar untuk pertempuran; namun, siapa pun yang tiba sebagai yang kedua di medan perang dan harus segera berlari ke pertempuran akan datang dengan kelelahan.
### Oleh karena itu, pejuang yang cerdik mengeksekusi kehendaknya pada musuh, tetapi dia tidak membiarkan kehendak musuh diberlakukan padanya.
### Dengan menawarkan keuntungan kepada musuh, dia dapat membuat musuh mendekat dengan sendirinya; atau, dengan menimbulkan kerusakan, dia dapat membuatnya tidak mungkin bagi musuh untuk mendekat.
### Jika musuhnya sedang bersantai, dia dapat mengganggunya; jika dipasok dengan cukup makanan, dia dapat melaparkannya; jika berkemah dengan tenang, dia dapat memaksa musuhnya 

''';
