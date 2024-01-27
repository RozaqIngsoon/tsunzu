import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas12 extends StatelessWidget {
  const BabSebelas12({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_12,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### harus dipelajari.
### Saat menyerang wilayah lawan, prinsipnya sederhana: semakin dalam kamu masuk, semakin kuat koordinasinya; jika kamu hanya masuk sedikit, maka pasukan akan terpecah.
### Saat kamu meninggalkan negaramu dan membawa pasukan melintasi wilayah tetangga, kamu berada di daerah penting. Jika ada jalan komunikasi dari semua arah, daerah itu seperti persimpangan jalan.
### Saat kamu menembus jauh ke dalam suatu negara, itu adalah wilayah yang kritis. Namun, jika kamu hanya menembus sedikit, itu adalah wilayah yang lebih mudah.
### Saat kamu menemukan benteng musuh di belakang dan jalan yang sempit di depan, itu adalah situasi terkepung. Jika tidak ada tempat perlindungan sama sekali, itu adalah kondisi yang putus asa.

''';