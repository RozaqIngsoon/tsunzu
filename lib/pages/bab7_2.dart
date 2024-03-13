import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTujuh2 extends StatelessWidget {
  const BabTujuh2({super.key});

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
            //NoHalaman(pages: pages,itemOfPages:bab7_2,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Ini menunjukkan pemahaman tentang keahlian deviasi*.
### Bermanuver dengan pasukan memang menguntungkan; dengan orang banyak yang tidak disiplin, paling berbahaya.
### Jika kamu mengirimkan pasukan penuh untuk bergerak dengan tujuan meraih keuntungan, kemungkinannya adalah kamu akan terlambat. Sebaliknya, mengirim kelompok bergerak cepat untuk mencapai tujuan tersebut melibatkan pengorbanan pada persediaan dan beban mereka.
### Jadi, jika kamu memerintahkan pasukanmu untuk menggulung mantel mereka, memaksanya berbaris tanpa berhenti siang dan malam, menempuh jarak dua kali lipat dari yang biasanya dalam satu perjalanan, menempuh seratus LI* untuk memperoleh keuntungan, maka pemimpin dari divisi ketigamu akan jatuh ke tangan musuh.
### Para prajurit yang lebih kuat akan 
''';
