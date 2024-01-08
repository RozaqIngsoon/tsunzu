import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSatu5 extends StatelessWidget {
  const BabSatu5({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab1_5,bab: 'Perencanaan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### agar dia menjadi sombong. Jika dia sedang bersantai, jangan beri dia istirahat. Jika pasukannya bersatu, pisahkan mereka. Serang dia di tempat yang tidak siap, muncul di tempat yang tidak diharapkan. 
### Taktik militer ini, yang mengarah pada kemenangan, tidak boleh diungkapkan sebelumnya. Sekarang, jenderal yang memenangkan pertempuran melakukan banyak perhitungan di tenda tempat pertempuran berlangsung. Jenderal yang kalah dalam pertempuran hanya melakukan sedikit perhitungan sebelumnya. Dengan demikian, banyak perhitungan mengarah pada kemenangan, dan sedikit perhitungan mengarah pada kekalahan; apalagi tidak ada perhitungan sama sekali.

''';
