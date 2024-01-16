import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSembilan7 extends StatelessWidget {
  const BabSembilan7({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab9_7,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Ketika beberapa orang terlihat maju dan beberapa mundur, itu adalah tipu daya.
### Ketika para prajurit berdiri dengan bersandar pada tombak mereka, mereka lemas karena kekurangan makanan.
### Jika orang-orang yang dikirim untuk mengambil air pertama-tama minum sendiri, maka tentara mengalami kehausan.
### Jika musuh melihat keuntungan yang dapat diperoleh dan tidak berupaya untuk mengamankannya, maka tentara sudah kelelahan.
### Jika burung-burung berkumpul di suatu tempat, itu berarti tempat itu tidak terisi. Kericuhan pada malam hari menandakan ketegangan.
### Jika ada kerusuhan di kamp, otoritas sang jenderal lemah. Jika bendera-bendera dan panji-panji berpindah-


''';
