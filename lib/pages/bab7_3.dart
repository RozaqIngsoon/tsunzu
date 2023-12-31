import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:bab7_3,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### akan jatuh ke tangan musuh.
### Para prajurit yang lebih kuat akan berada di depan, yang lelah akan tertinggal, dan dengan rencana ini hanya satu persepuluh dari pasukan Anda yang akan mencapai tujuan mereka.
### Jika Anda bergerak sejauh lima puluh LI untuk mengatasi musuh, Anda akan kehilangan pemimpin divisi pertama Anda, dan hanya setengah pasukan Anda yang akan mencapai tujuan tersebut.
### Jika Anda bergerak sejauh tiga puluh LI dengan tujuan yang sama, dua pertiga pasukan Anda akan tiba.
### Maka dapat kita simpulkan bahwa sebuah pasukan tanpa perbekalan adalah pasukan yang hilang; tanpa persediaan makanan adalah pasukan yang hilang; tanpa basis pasokan adalah pasukan yang hilang.
''';
