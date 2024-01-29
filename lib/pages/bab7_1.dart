import 'package:flutter/material.dart';
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
### Dalam perang, seorang jenderal menerima perintahnya dari penguasa atau kepala negara.
### Setelah mengumpulkan pasukan dan menyatukan kekuatannya, langkah berikutnya adalah menyelaraskan dan menyatukan berbagai elemen sebelum mendirikan perkemahan.
### Setelah itu, kita masuk ke dalam manuver taktis, yang merupakan hal yang cukup sulit. Kesulitan dalam manuver taktis terletak pada kemampuan untuk merubah jalur yang berkelok menjadi lurus, serta mengubah keadaan yang kurang menguntungkan menjadi keuntungan.
### Maka, jika mengambil rute yang panjang dan berkelok-kelok, pancinglah musuh keluar dari jalur utama. Dengan melakukannya, meskipun memulai perjalanan setelahnya, kita dapat mencapai tujuan lebih cepat. 
''';
