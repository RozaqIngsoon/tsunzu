import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDua4 extends StatelessWidget {
  const BabDua4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab2_4,bab: 'Peperangan',)
          ],
        ),
      ),
    );
  }
}

const String teks = '''
### para petani akan menderita akibat pungutan berat. Dengan hilangnya harta benda dan kelelahan kekuatan ini, rumah-rumah rakyat akan terlantar, dan tiga per sepuluh pendapatan mereka akan habis; sementara biaya pemerintah untuk kendaraan yang rusak, kuda yang sudah usang, baju besi dan helm, busur dan anak panah, tombak dan perisai, mantel pelindung, sapi tarik dan kendaraan berat, akan mencapai empat per sepuluh dari total pendapatannya.
### Oleh karena itu, seorang jenderal yang bijaksana selalu berusaha mencari makanan dari musuh. Satu kendaraan penuh persediaan musuh setara dengan dua puluh persediaan miliknya sendiri, begitu juga dengan satu PICUL pakan musuh yang setara dengan dua puluh dari persediaannya sendiri.
### Untuk dapat membunuh musuh, para prajurit kita harus dihasut menjadi 

''';
