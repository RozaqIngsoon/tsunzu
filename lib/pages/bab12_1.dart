import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabDuaBelas1 extends StatelessWidget {
  const BabDuaBelas1({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab12_1,bab: 'Serangan Dengan Api',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
## Bab 12 : SERANGAN DENGAN API
### Terdapat lima metode untuk menyerang dengan menggunakan api. Metode pertama adalah membakar pasukan di kamp mereka; metode kedua adalah dengan membakar persediaan; metode ketiga adalah dengan membakar kereta barang; metode keempat adalah dengan membakar gudang senjata dan tempat penyimpanan amunisi; metode kelima adalah dengan melemparkan api di tengah-tengah musuh.
### Untuk melaksanakan serangan dengan api, kita harus memiliki sarana yang tersedia. Bahan untuk membuat api sebaiknya selalu siap digunakan.
### Ada musim yang tepat untuk melancarkan serangan dengan api, dan hari-hari khusus untuk memulai kebakaran.
### Musim yang tepat adalah saat cuacanya sangat kering. Hari-hari yang optimal adalah ketika bulan berada dalam 

''';