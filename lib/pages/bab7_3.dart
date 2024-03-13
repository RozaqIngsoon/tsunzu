import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTujuh3 extends StatelessWidget {
  const BabTujuh3({super.key});

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
            //NoHalaman(pages: pages,itemOfPages:bab7_3,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### berada di depan, yang lelah akan tertinggal, dan dengan rencana ini hanya satu persepuluh dari pasukanmu yang akan mencapai tujuan.
### Jika kamu bergerak sejauh lima puluh LI* untuk mengatasi musuh, kamu akan kehilangan pemimpin divisi pertamamu, dan hanya setengah pasukanmu yang akan mencapai tujuan tersebut.
### Jika kamu bergerak sejauh tiga puluh LI* dengan tujuan yang sama, dua pertiga pasukanmu yang akan tiba.
### Maka dapat kita simpulkan bahwa pasukan yang tidak memiliki perbekalan, tidak memiliki persediaan makanan, dan tidak memiliki basis pasokan, dapat dianggap sebagai pasukan yang hilang.
### Sebelum membentuk aliansi, kita perlu memahami rencana-rencana yang dimiliki oleh tetangga kita.
### Kita tidak pantas memimpin pasukan 
''';
