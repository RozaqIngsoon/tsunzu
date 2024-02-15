import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTigaBelas2 extends StatelessWidget {
  const BabTigaBelas2({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab13_2,bab: 'Penggunaan Mata-Mata',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### untuk menyerang dan menaklukkan, serta mencapai hal-hal yang di luar jangkauan orang biasa, adalah PENGETAHUAN AWAL.
### Pengetahuan awal ini tidak bisa diambil dari roh; tidak bisa diperoleh secara induktif dari pengalaman, atau dengan perhitungan deduktif apa pun.
### Pengetahuan tentang disposisi* musuh hanya dapat diperoleh dari orang lain.
### Oleh karena itu, penggunaan mata-mata, yang terbagi menjadi lima kelas: 
1) ### Mata-mata lokal; 
2) ### Mata-mata internal;
3) ### Mata-mata yang berpaling; 
4) ### Mata-mata yang berkorban; 
5) ### Mata-mata yang selamat.
### Ketika kelima jenis mata-mata ini beroperasi, tidak ada yang dapat menemukan sistem rahasia itu. Ini disebut sebagai "manipulasi ilahi dari benang-benang." Kemampuan ini merupakan aset paling berharga bagi seorang pemimpin.
''';