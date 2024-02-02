import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSembilan3 extends StatelessWidget {
  const BabSembilan3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab9_3,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### 
### Jika kamu merawat pasukan dengan baik dan berkemah di tanah yang keras, maka pasukan akan terhindar dari penyakit, dan ini akan membawa kemenangan.
### Saat kamu sampai di sebuah bukit atau tebing, kuasai sisi yang terkena sinar matahari, dengan kemiringan ke belakang sebelah kananmu. Dengan cara ini, kamu akan memberikan keuntungan bagi para prajuritmu dan sekaligus memanfaatkan keunggulan alami dari tanah tersebut.
### Ketika, akibat hujan deras di daerah hulu, sungai yang ingin kamu lintasi mengalami peluberan dan berbusa, kamu harus menunggu hingga air surut.
### Daerah yang memiliki tebing curam dengan aliran deras di antara mereka, lubang alami yang dalam, tempat-tempat sempit, semak-semak yang berantakan, rawa-rawa, dan celah-celah harus segera ditinggalkan dan tidak mendekat.

''';
