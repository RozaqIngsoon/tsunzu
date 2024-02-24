import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas16 extends StatelessWidget {
  const BabSebelas16({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_16,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Karena justru ketika sebuah pasukan telah terjebak dalam bahaya, itulah saatnya mereka memiliki potensi untuk memberikan pukulan demi kemenangan.
### Keberhasilan dalam perang dicapai dengan hati-hati menyesuaikan diri kita dengan tujuan musuh.
### Dengan terus-menerus mengikuti sisi musuh, kita pada akhirnya akan berhasil membunuh panglima tertingginya.
### Ini disebut kemampuan untuk mencapai sesuatu hal dengan kecerdikan semata.
### Pada hari kamu mengambil komando, blokir jalur perbatasan, hancurkan catatan resmi, dan hentikan perjalanan para utusan.
### Berdikarilah di ruang dewan, agar kamu dapat mengendalikan situasi.
### Jika musuh meninggalkan pintu terbuka, kamu harus segera masuk.
### Mengalahkan lawanmu dengan merebut 

''';