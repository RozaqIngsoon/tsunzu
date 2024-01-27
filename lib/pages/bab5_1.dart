import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabLima1 extends StatelessWidget {
  const BabLima1({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab5_1,bab: 'Energi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 5 : ENERGI
### Mengendalikan pasukan besar sama seperti mengendalikan sekelompok kecil orang: hanya masalah membagi-bagikan tugas mereka.
### Berperang dengan pasukan besar di bawah komandomu sama sekali tidak berbeda dengan berperang dengan pasukan kecil; itu hanya masalah menetapkan tanda dan sinyal.
### Untuk memastikan bahwa seluruh pasukan kamu dapat menahan serangan musuh dan tetap tegar, kamu perlu menggunakan manuver langsung dan tidak langsung.
### Agar pasukan kamu memiliki dampak seperti batu penggiling yang menghancurkan telur, kamu perlu memahami ilmu tentang titik lemah dan titik kuat.
### Dalam semua pertempuran, metode langsung dapat digunakan untuk memulai pertempuran, tetapi untuk
''';
