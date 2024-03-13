import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: 25),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            //NoHalaman(pages: pages,itemOfPages:bab9_8,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
###  dan ketika para prajurit tidak menggantung panci-potnya di atas api perkemahan, menunjukkan bahwa mereka tidak akan kembali ke tenda mereka, kamu dapat tahu bahwa mereka bertekad untuk bertempur sampai mati.
###	Pemandangan orang-orang yang berbisik-bisik bersama dalam kelompok kecil atau berbicara dengan suara pelan menunjukkan ketidak setujuan di antara para prajurit biasa.
###	Jika penghargaan diberikan terlalu sering, itu menandakan bahwa musuh telah kehabisan sumber daya; di sisi lain, memberikan terlalu banyak hukuman dapat menciptakan kondisi yang sangat sulit.
###	Ketika utusan dikirim dengan kata-kata pujian, itu merupakan tanda bahwa musuh menginginkan gencatan senjata.
###	Jika pasukan musuh marah bergerak maju dan tetap menghadap pasukan 

''';
