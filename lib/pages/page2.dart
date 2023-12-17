import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
              child: Markdown(
                data: konten1,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:page2,bab: 'Perencanaan',)

          ],
        ),
      ),
    );
  }
}

const String konten1 = '''
## Bab 1 : PERENCANAAN
### Seni perang memiliki arti penting yang vital bagi negara.
### Perang adalah masalah hidup dan mati, jalan menuju keselamatan atau kehancuran. Oleh karena itu, ini adalah subjek penyelidikan yang tidak boleh diabaikan dengan alasan apa pun.
### Seni perang diatur oleh lima faktor konstan, yang harus dipertimbangkan dalam pertimbangan seseorang, ketika berusaha untuk menentukan kondisi yang berlaku di medan laga. Yaitu: 
### 1. Hukum Moral.
### 2. Langit.
### 3. Bumi.
### 4. Komandan.
### 5. Metode dan disiplin.
### Hukum MORAL menyebabkan pasukan sepenuhnya selaras dengan pemimpin mereka, sehingga mereka akan mengikutinya tanpa memedulikan nyawa mereka, tanpa tergoyahkan oleh bahaya apa pun.
### LANGIT mengartikan malam dan siang, dingin dan panas, waktu dan musim.
### BUMI mencakup jarak, besar dan kecil; bahaya dan keamanan; tanah terbuka dan celah sempit; peluang hidup dan mati.

''';
