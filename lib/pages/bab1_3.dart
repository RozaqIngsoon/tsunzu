import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSatu3 extends StatelessWidget {
  const BabSatu3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab1_3,bab: 'Perencanaan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### kemenangan; siapa yang tidak mengenalinya akan gagal. Oleh karena itu, dalam pertimbangan kamu, ketika berusaha menentukan kondisi militer, gunakan prinsip tersebut sebagai dasar perbandingan, seperti ini:
### a).	Di antara kedua pemimpin, siapakah yang memiliki pemahaman tentang Hukum Moral?
### b).	Di antara kedua jenderal, siapakah yang memiliki kemampuan paling besar?
### c).	Dengan siapa terletak keuntungan yang berasal dari Langit dan Bumi?
### d).	Di pihak mana disiplin ditegakkan dengan paling ketat?
### e).	Pasukan manakah yang lebih kuat?
### f).	Di pihak mana para perwira dan prajurit dilatih dengan lebih baik?
### g).	Di dalam pasukan manakah terdapat konsistensi yang lebih besar baik dalam pemberian imbalan maupun hukuman?
''';
