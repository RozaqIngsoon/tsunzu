import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSatu1 extends StatelessWidget {
  const BabSatu1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            // color:Color(0xff1d2031) ,
            color: Colors.blueGrey),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.only(top: 30),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            NoHalaman(
              pages: pages,
              itemOfPages: bab1_1,
              bab: 'Perencanaan',
            )
          ],
        ),
      ),
      floatingActionButton: menu(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}

const String teks = '''
## Bab 1 : PERENCANAAN
### Seni perang memiliki arti penting yang vital bagi negara.
### Perang adalah masalah hidup dan mati, jalan menuju keselamatan atau kehancuran. Oleh karena itu, ini adalah subjek penyelidikan yang tidak boleh diabaikan dengan alasan apa pun.
### Seni perang diatur oleh lima faktor konstan, yang harus dipertimbangkan dalam pertimbangan seseorang, ketika berusaha untuk menentukan kondisi yang berlaku di medan laga. Yaitu: 
### 1. Hukum moral.
### 2. Langit.
### 3. Bumi.
### 4. Komandan.
### 5. Metode dan disiplin.
### Hukum MORAL menyebabkan pasukan sepenuhnya selaras dengan pemimpin mereka, sehingga mereka akan mengikutinya tanpa memedulikan
''';
