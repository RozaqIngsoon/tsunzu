import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
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
4)	### Jika memungkinkan untuk melancarkan serangan dengan api dari luar, jangan menunggu hingga terjadi api di dalam, melainkan lakukan serangan saat momen yang menguntungkan.
5)	### Saat kamu melancarkan serangan dengan api, arahkan ke arah angin. Jangan menyerang dari sisi yang lain.
### Angin yang muncul pada siang hari akan berlangsung lama, tetapi angin malam biasanya akan mereda dengan cepat.
### Dalam setiap pasukan, kelima perkembangan terkait dengan api harus diketahui, gerakan bintang harus dihitung, dan perhatian harus dijaga terhadap hari-hari yang sesuai.
### Maka mereka yang menggunakan api sebagai bantuan untuk serangan menunjukkan kecerdasan; mereka yang menggunakan air sebagai

''';