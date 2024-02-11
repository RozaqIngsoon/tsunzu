import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
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
### Dalam melancarkan serangan dengan menggunakan api, seseorang harus siap menghadapi lima kemungkinan perkembangan yang bisa terjadi:
1)	### Ketika kebakaran terjadi di dalam perkemahan musuh, segera bertindak dengan serangan dari luar.
2)	### Jika terjadi kebakaran tetapi pasukan musuh tetap tenang, tunggu dan jangan menyerang.
3)	### Saat kekuatan api mencapai puncaknya, lanjutkan dengan serangan jika memungkinkan; jika tidak, tetaplah di tempatmu.
4)	### Jika memungkinkan untuk melancarkan serangan dengan api dari luar, jangan menunggu hingga terjadi api di dalam, melainkan lakukan serangan saat momen yang menguntungkan.
5)	### Saat kamu melancarkan serangan dengan api, arahkan ke arah angin. Jangan menyerang dari sisi yang lain.

''';