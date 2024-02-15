import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas7 extends StatelessWidget {
  const BabSebelas7({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_7,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### dapat dipercaya.
### Larang penggunaan pertanda, dan hilangkan keraguan yang bersifat superstitius*. Dengan demikian, sampai saat kematian tiba, tidak perlu takut akan bencana apa pun.
### Jika prajurit-prajurit kita tidak terbebani oleh keinginan akan kekayaan, itu bukan karena mereka tidak menyukai kekayaan; jika hidup mereka tidak terlalu panjang, itu bukan karena mereka tidak menginginkan umur yang panjang.
### Pada hari mereka diperintahkan untuk perang, prajurit-prajuritmu mungkin menangis, baik yang duduk dengan membasahi pakaiannya, maupun yang berbaring dengan air mata mengalir di pipi mereka. Tapi jika mereka sekali-kali ditempatkan pada posisi sulit, mereka akan menunjukkan keberanian seorang Chu atau Kuei*.
### Seorang ahli taktik yang cakap dapat
''';