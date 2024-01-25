import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class DaftarIstilah extends StatelessWidget {
  const DaftarIstilah({super.key});

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
            NoHalaman(pages: pages,itemOfPages:daftarIstilah,bab: 'Daftar Istilah',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## GLOSSARY
---
### * Picul
#### Picul merujuk pada satuan berat yang digunakan di Tiongkok tradisional. Sebuah picul setara dengan sekitar 133.33 pound atau sekitar 60.48 kilogram. Picul sering digunakan untuk mengukur berat barang dagangan, seperti beras atau rempah-rempah, dalam konteks sejarah perdagangan Tiongkok.
### * Superstitious
#### Superstitious adalah istilah yang digunakan untuk menggambarkan keyakinan atau sikap terhadap sesuatu yang tidak memiliki dasar ilmiah atau rasional, tetapi masih dipegang teguh oleh sebagian orang karena tradisi, kepercayaan turun-temurun, atau kebiasaan. Orang yang bersifat superstitious cenderung mempercayai bahwa tindakan atau kejadian kecil dapat memiliki pengaruh besar terhadap keberuntungan atau nasib mereka, tanpa adanya bukti yang kuat atau dasar ilmiah yang mendukung keyakinan tersebut.
#### Contoh dari superstitious adalah ketakutan terhadap angka tertentu, melewati di bawah tangga, atau takut akan kucing hitam. Meskipun tidak ada bukti ilmiah yang mendukung bahwa hal-hal tersebut benar-benar membawa keberuntungan atau malapetaka, beberapa orang masih memegang keyakinan ini dan menghindari tindakan atau objek yang dianggap membawa sial.
#### Superstisi juga bisa muncul dalam berbagai bentuk di berbagai budaya, dan sering kali dapat berubah seiring waktu. Meskipun banyak orang mungkin menyadari bahwa keyakinan superstitious mereka tidak didukung oleh fakta ilmiah, mereka tetap mempertahankannya karena merupakan bagian dari warisan budaya atau tradisi yang dipegang oleh masyarakat.
''';