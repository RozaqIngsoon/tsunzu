import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class Page8 extends StatelessWidget {
  const Page8({super.key});

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
            NoHalaman(pages: pages,itemOfPages:page8,bab: 'Peperangan',)
          ],
        ),
      ),
    );
  }
}

const String konten1 = '''
### Dengan hilangnya harta benda dan kelelahan kekuatan ini, rumah-rumah rakyat akan terlantar, dan tiga per sepuluh pendapatan mereka akan habis; sementara biaya pemerintah untuk kereta yang rusak, kuda yang sudah usang, baju besi dan helm, busur dan anak panah, tombak dan perisai, mantel pelindung, sapi tarik dan kereta berat, akan mencapai empat per sepuluh dari total pendapatannya.
### Oleh karena itu, seorang jenderal yang bijaksana selalu berusaha mencari makanan dari musuh. Satu kereta penuh persediaan musuh setara dengan dua puluh persediaan miliknya sendiri, begitu juga dengan satu PICUL pakan musuh yang setara dengan dua puluh dari persediaannya sendiri.
### Untuk dapat membunuh musuh, para prajurit kita harus dihasut menjadi marah; agar ada keuntungan dari mengalahkan musuh, mereka harus mendapatkan imbalan.
### Oleh karena itu, dalam pertempuran kereta, ketika sepuluh atau lebih kereta telah diambil, mereka yang pertama kali mengambilnya harus diberi imbalan. Bendera kita sendiri harus digantikan dengan bendera musuh, dan kereta-kereta itu harus dicampur dan digunakan bersama dengan kita. Para tentara yang ditangkap harus diperlakukan dengan baik dan tetap dipertahankan.

''';
