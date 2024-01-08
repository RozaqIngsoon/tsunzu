import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEnam6 extends StatelessWidget {
  const BabEnam6({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab6_6,bab: 'Titik Lemah & Kuat',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### perang melawan kita.
### Mengetahui tempat dan waktu pertempuran yang akan datang, kita dapat berkonsentrasi dari jarak terjauh untuk berperang.
### Tetapi jika baik waktu maupun tempatnya tidak diketahui, maka sayap kiri akan tidak berdaya untuk membantu sayap kanan, sayap kanan juga tidak berdaya untuk membantu sayap kiri, depan tidak bisa membantu belakang, atau belakang untuk mendukung depan. Lebih-lebih lagi jika bagian-bagian terjauh dari pasukan terpisah oleh jarak kurang dari seratus LI, dan bahkan yang terdekat terpisah oleh beberapa LI!
### Meskipun menurut perkiraan saya, tentara Yueh lebih banyak dalam jumlah daripada milik kita, itu tidak akan memberi mereka keuntungan dalam hal kemenangan. Saya katakan bahwa kemenangan bisa dicapai.

''';
