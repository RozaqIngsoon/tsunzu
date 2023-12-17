import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class Page13 extends StatelessWidget {
  const Page13({super.key});

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
              child: Markdown(
                data: konten1,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:page13,bab: 'Strategi',)
          ],
        ),
      ),
    );
  }
}

const String konten1 = '''
### Oleh karena itu, meskipun pertempuran yang keras dapat dilakukan oleh pasukan kecil, pada akhirnya pasukan yang lebih besar akan dapat menaklukkan pasukan tersebut.
### Sekarang jenderal adalah benteng pertahanan Negara; jika benteng pertahanan tersebut lengkap di semua titik, Negara akan kuat; jika benteng pertahanan tersebut cacat, Negara akan lemah.
### Ada tiga cara di mana seorang pemimpin dapat membawa bencana kepada pasukannya :
### 1. Dengan memerintahkan pasukan untuk maju atau mundur, tanpa menyadari bahwa mereka tidak dapat mengikuti perintah tersebut. Ini disebut menghambat pasukan.
### 2. Dengan mencoba mengatur pasukan seperti mengurus kerajaan, tanpa memahami kondisi yang berlaku dalam pasukan. Ini menyebabkan kegelisahan dalam pikiran para prajurit.
### 3. Dengan mempekerjakan para perwira pasukannya tanpa diskriminasi, karena tidak mengerti prinsip militer tentang adaptasi terhadap situasi. Ini mengguncang keyakinan para prajurit.

''';
