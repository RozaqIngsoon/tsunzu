import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSembilan8 extends StatelessWidget {
  const BabSembilan8({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab9_8,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### pindah, ada potensi pemberontakan. Jika para perwira marah, itu berarti para prajuritnya lelah.
###	Ketika sebuah pasukan memberi makan kuda-kudanya dengan biji-bijian dan membunuh ternaknya untuk makanan, dan ketika para prajurit tidak menggantung panci-potnya di atas api perkemahan, menunjukkan bahwa mereka tidak akan kembali ke tenda mereka, Anda dapat tahu bahwa mereka bertekad untuk bertempur sampai mati.
###	Pemandangan orang-orang yang berbisik-bisik bersama dalam kelompok kecil atau berbicara dengan suara pelan menunjukkan ketidaksetujuan di antara para prajurit biasa.
###	Penghargaan yang terlalu sering menandakan bahwa musuh sudah habis sumber dayanya; terlalu banyak hukuman mengkhawatirkan kondisi

''';
