import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
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
### mana, dia akan lemah di mana-mana.
### Kekurangan jumlah muncul ketika kita harus bersiap-siap menghadapi kemungkinan serangan, sementara kekuatan jumlah datang dari memaksa lawan kita untuk melakukan persiapan perang melawan kita.
### Dengan mengetahui tempat dan waktu pertempuran yang akan datang, kita dapat fokus dan bersiap dari jarak terjauh untuk berperang.
### Tetapi jika baik waktu maupun tempatnya tidak diketahui, maka bagian-bagian pasukan tidak dapat saling membantu. Sayap kiri tidak bisa membantu sayap kanan, sayap kanan juga tidak bisa membantu sayap kiri, depan tidak dapat membantu belakang, atau belakang untuk mendukung depan. Terlebih lagi, jika bagian-bagian pasukan terpisah oleh jarak yang jauh
### Meskipun menurut perkiraan saya, tentara Yueh* lebih banyak dalam

''';
