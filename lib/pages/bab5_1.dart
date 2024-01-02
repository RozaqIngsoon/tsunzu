import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
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
              padding: EdgeInsets.only(top: 30,left: 8,right: 8,bottom: 8),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(
                teksData: teks,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:bab5_1,bab: 'Energi',)
          ],
        ),
      ),
      floatingActionButton: menu(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}

const String teks = '''
## Bab 5 : ENERGI
### Kontrol atas pasukan besar memiliki prinsip yang sama dengan mengendalikan sedikit orang: itu hanya masalah membagi jumlah mereka.
### Berperang dengan pasukan besar di bawah komando Anda sama sekali tidak berbeda dengan berperang dengan pasukan kecil: itu hanya masalah menetapkan tanda dan sinyal.
### Untuk memastikan bahwa seluruh pasukan Anda dapat menahan serangan musuh dan tetap tegar - ini dilakukan dengan manuver langsung dan tidak langsung.
### Agar dampak pasukan Anda bisa seperti batu penggiling yang menghantam telur - ini dicapai melalui ilmu tentang titik lemah dan titik kuat.
### Dalam semua pertempuran, metode
''';
