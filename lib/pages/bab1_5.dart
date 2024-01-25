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
### bahwa kita jauh; jika kita berada jauh, kita sebaiknya membuat musuh percaya bahwa kita dekat. Menawarkan umpan untuk memancing musuh dapat menjadi taktik yang baik. Jika kita berhasil menipu musuh, maka kita dapat menghancurkannya. Jika musuh merasa aman di semua titik, kita harus bersiap-siap untuk menghadapinya. Jika musuh memiliki kekuatan yang lebih besar, sebaiknya dihindari. Jika lawan kita mudah marah, sebaiknya diusahakan untuk tidak memprovokasinya. Berpura-pura lemah dapat membuat lawan kita menjadi sombong. Jika dia sedang santai, sebaiknya jangan memberinya kesempatan untuk istirahat. Jika pasukan musuh bersatu, taktik memisahkan mereka bisa menjadi strategi yang efektif. Menyerang di tempat yang tidak siap dan muncul di tempat yang tidak diharapkan dapat

''';
