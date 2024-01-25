import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDuaBelas2 extends StatelessWidget {
  const BabDuaBelas2({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab12_2,bab: 'Serangan Dengan Api',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### dalam konstelasi Sieve, Wall, Wing, atau Cross-bar; karena empat ini semua adalah hari-hari angin yang naik.
### Dalam menyerang dengan api, seseorang harus siap menghadapi lima perkembangan yang mungkin terjadi:
1)	### Ketika kebakaran terjadi di dalam perkemahan musuh, segera bertindak dengan serangan dari luar.
2)	### Jika terjadi kebakaran tetapi pasukan musuh tetap tenang, tunggu dan jangan menyerang.
3)	### Saat kekuatan api mencapai puncaknya, lanjutkan dengan serangan jika memungkinkan; jika tidak, tetaplah di tempat kamu.
4)	### Jika memungkinkan untuk melancarkan serangan dengan api dari luar, jangan menunggu hingga terjadi api di dalam, melainkan

''';