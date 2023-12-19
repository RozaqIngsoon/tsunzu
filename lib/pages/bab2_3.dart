import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDua3 extends StatelessWidget {
  const BabDua3({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab2_3,bab: 'Peperangan',)
          ],
        ),
      ),
    );
  }
}

const String teks = '''
### yang menguntungkan.
### Seorang jendral yang terampil tidak akan mengumpulkan pasukan kedua, begitu pula kendaraan pasokannya tidak akan dimuat lebih dari dua kali.
### Bawalah perlengkapan perang dari rumah, tetapi carilah makanan dari musuh. Dengan demikian, pasukan akan memiliki cukup makanan untuk kebutuhannya.
### Kekurangan kas negara menyebabkan pasukan dipertahankan dengan kontribusi dari jarak jauh. Memberikan kontribusi untuk mempertahankan pasukan dari jarak jauh menyebabkan rakyat menjadi miskin.
### Di sisi lain, kedekatan suatu pasukan menyebabkan harga-harga naik; dan harga yang tinggi menyebabkan harta benda masyarakat menjadi terkuras
### Ketika harta benda mereka terkuras, para petani akan menderita akibat pungutan berat.
''';
