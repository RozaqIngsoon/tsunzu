import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDuaBelas3 extends StatelessWidget {
  const BabDuaBelas3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab12_3,bab: 'Serangan Dengan Api',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''

### Angin yang muncul pada siang hari akan berlangsung lama, tetapi angin malam biasanya akan mereda dengan cepat.
### Dalam setiap pasukan, penting untuk mengetahui kelima kemungkinan perkembangan terkait dengan penggunaan api, menghitung gerakan bintang, dan tetap waspada terhadap hari-hari yang sesuai.
### Jadi, orang-orang yang menggunakan api dalam serangan menunjukkan kecerdasan, sementara mereka yang mengandalkan air untuk serangan mendapatkan kekuatan tambahan.
''';