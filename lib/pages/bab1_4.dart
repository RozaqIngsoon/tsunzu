import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSatu4 extends StatelessWidget {
  const BabSatu4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab1_4,bab: 'Perencanaan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### baik dalam pemberian imbalan maupun hukuman?
### Berdasarkan pada sejauh mana keadaan menguntungkan, seseorang sebaiknya memodifikasi rencananya. Semua perang didasarkan pada tipuan. Oleh karena itu, saat kita mampu menyerang, kita harus tampak tidak mampu; saat menggunakan kekuatan kita, kita harus tampak tidak aktif; saat kita berada dekat, kita harus membuat musuh percaya bahwa kita jauh; saat kita jauh, kita harus membuatnya percaya bahwa kita dekat. Tawarkan umpan untuk memikat musuh. Tertipu, dan hancurkan dia. Jika dia merasa aman di semua titik, bersiaplah untuk menghadapinya. Jika dia memiliki kekuatan yang lebih unggul, hindari dia. Jika lawan Anda memiliki sifat yang mudah marah, usahakan untuk mengiritasinya. Berpura-pura lemah,  
''';
