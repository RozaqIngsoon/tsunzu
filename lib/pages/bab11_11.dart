import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas11 extends StatelessWidget {
  const BabSebelas11({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_11,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Pada saat-saat kritis, pemimpin sebuah pasukan bertindak seperti orang yang telah naik ke ketinggian dan kemudian menendang tangga di belakangnya. Dia membawa pasukannya jauh ke wilayah musuh sebelum dia mengungkapkan niatnya.
### Dia membakar perahu-perahunya dan memecahkan panci-potnya; seperti seorang gembala yang menggiring kawanan domba, dia mengarahkan pasukannya ke sana ke mari, dan tak seorang pun tahu ke mana dia akan pergi.
### Untuk mengumpulkan pasukannya dan membawanya ke dalam bahaya: inilah yang dapat disebut sebagai tugas seorang jenderal.
### Tindakan yang berbeda yang sesuai untuk sembilan jenis situasi, kebijaksanaan dalam taktik agresif atau defensif; dan hukum dasar sifat manusia: inilah hal-hal pasti yang harus dipelajari.

''';