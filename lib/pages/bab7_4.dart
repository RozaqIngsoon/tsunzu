import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTujuh4 extends StatelessWidget {
  const BabTujuh4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab7_4,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Kita tidak dapat membentuk aliansi sampai kita mengenal rencana-rencana tetangga kita.
### Kita tidak pantas memimpin pasukan dalam perjalanan kecuali kita akrab dengan kondisi medan - gunung dan hutan, jurang dan tebing-tebingnya, rawa dan lumpurnya.
### Kita tidak akan dapat memanfaatkan keuntungan alam secara optimal kecuali kita menggunakan pemandu lokal.
### Dalam perang, berlatihlah menyembunyikan niat kamu, dan kamu akan berhasil.
### Apakah akan mengkonsentrasikan atau membagi pasukan kamu harus diputuskan berdasarkan keadaan yang ada.
### Biarkan kecepatan kamu seperti angin, dan kekompakan seperti hutan.
### Dalam perampokan dan penjarahan,

''';
