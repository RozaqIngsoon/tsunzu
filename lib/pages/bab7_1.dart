import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTujuh1 extends StatelessWidget {
  const BabTujuh1({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab7_1,bab: 'Manuver',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 7 : MANUVER
### Dalam perang, seorang jenderal menerima perintahnya dari penguasa (sovereign) atau kepala negara.
### Setelah mengumpulkan pasukan dan mengkonsentrasikan kekuatannya, ia harus mencocokkan dan menyelaraskan berbagai elemen tersebut sebelum mendirikan perkemahan.
### Setelah itu, datanglah manuver taktis, yang tak ada yang lebih sulit. Kesulitan dalam manuver taktis terletak pada kemampuan untuk mengubah jalur yang berkelok menjadi yang lurus, dan mengubah kemalangan menjadi keuntungan.
### Oleh karena itu, untuk mengambil rute yang panjang dan berkelok-kelok, setelah memancing musuh keluar dari jalur, dan meskipun memulai perjalanan setelahnya, berhasil mencapai tujuan sebelumnya,

''';
