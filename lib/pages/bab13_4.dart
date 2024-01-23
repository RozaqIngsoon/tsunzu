import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTigaBelas4 extends StatelessWidget {
  const BabTigaBelas4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab13_4,bab: 'Penggunaan Mata-Mata',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### dan membiarkan mata-mata kita mengetahuinya dan melaporkannya kepada musuh.
### MATA-MATA YANG SELAMAT, akhirnya, adalah mereka yang membawa kembali berita dari kamp musuh.
### Oleh karena itu, tidak ada seorang pun di seluruh pasukan yang memiliki hubungan lebih intim yang harus dipertahankan selain dengan mata-mata. Tidak seorang pun harus diberi penghargaan yang lebih besar. Tidak ada bisnis lain yang boleh menjaga kerahasiaan lebih besar.
### Mata-mata tidak dapat digunakan dengan baik tanpa kecerdasan intuisi tertentu.
### Mereka tidak dapat dikelola dengan baik tanpa kebaikan hati dan kejujuran.
### Tanpa kecerdasan pikiran yang halus,

''';