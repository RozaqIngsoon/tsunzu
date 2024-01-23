import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTigaBelas7 extends StatelessWidget {
  const BabTigaBelas7({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab13_7,bab: 'Penggunaan Mata-Mata',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Dahulu, kebangkitan dinasti Yin disebabkan oleh I Chih yang pernah melayani di bawah Dinasti Hsia. Demikian juga, kebangkitan dinasti Chou disebabkan oleh Lu Ya yang pernah melayani di bawah Dinasti Yin.
###	Oleh karena itu, hanya penguasa yang bijaksana dan jenderal yang cerdas yang akan menggunakan kecerdasan tertinggi dari pasukan untuk tujuan penyusupan dan dengan demikian mereka mencapai hasil yang besar. Mata-mata adalah elemen yang paling penting dalam perang, karena kemampuan pasukan untuk bergerak bergantung pada mereka.

''';