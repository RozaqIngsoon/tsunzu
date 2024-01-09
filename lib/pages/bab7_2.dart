import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:bab7_2,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### menunjukkan pengetahuan akan kelicikan MANUVER DEVIASI.
### Manuver dengan pasukan adalah menguntungkan; dengan kerumunan yang tidak terdisiplinasi, sangat berbahaya.
### Jika Anda mengirim pasukan lengkap untuk bergerak dengan tujuan meraih keuntungan, kemungkinannya adalah Anda akan terlambat. Di sisi lain, mengirimkan kelompok bergerak cepat untuk tujuan tersebut melibatkan pengorbanan terhadap persediaan dan bebannya.
### Jadi, jika Anda memerintahkan pasukan Anda untuk menggulung mantel mereka, melakukan mars paksa tanpa berhenti siang dan malam, menempuh jarak dua kali lipat dari yang biasanya dalam satu perjalanan, menempuh seratus LI untuk memperoleh keuntungan, maka para pemimpin dari ketiga divisi Anda


''';
