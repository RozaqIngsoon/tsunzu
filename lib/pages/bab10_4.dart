import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSepuluh4 extends StatelessWidget {
  const BabSepuluh4({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab10_4,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### pasukan sama, tidak mudah untuk memprovokasi pertempuran, dan berperang akan merugikan kamu.
### Ini adalah enam prinsip yang terkait dengan Bumi. Seorang jenderal yang telah mencapai posisi yang bertanggung jawab harus berhati-hati untuk mempelajarinya.
### Sekarang, pasukan dapat menghadapi enam bencana berbeda, bukan karena penyebab alami, tetapi karena kesalahan yang menjadi tanggung jawab jenderal. Yaitu: 
1)	### Melarikan diri. 
2)	### Perlawanan. 
3)	### Kecurangan. 
4)	### Kehancuran. 
5)	### Kekacauan. 
6)	### Kekalahan.
### Jika suatu pasukan dipaksakan melawan musuh yang berukuran sepuluh kali lipat, hasilnya akan
''';
