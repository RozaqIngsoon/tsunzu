import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDua5 extends StatelessWidget {
  const BabDua5({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab2_5,bab: 'Peperangan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### sepuluh atau lebih kendaraan telah diambil, mereka yang pertama kali mengambilnya harus diberi imbalan. Bendera kita sendiri harus digantikan dengan bendera musuh, dan kendaraan-kendaraan itu harus dicampur dan digunakan bersama dengan kita. Para tentara yang ditangkap harus diperlakukan dengan baik dan tetap dipertahankan.
### Ini disebut dengan memanfaatkan musuh yang ditaklukkan untuk memperkuat kekuatan sendiri.
### Dalam perang, maka tujuan utamamu haruslah kemenangan, bukan kampanye yang berkepanjangan.
### Dengan demikian dapat diketahui bahwa pemimpin pasukan adalah hakim atas nasib rakyat, orang yang menentukan apakah negara akan dalam keadaan damai atau dalam bahaya.

''';
