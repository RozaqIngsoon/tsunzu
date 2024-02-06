import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas5 extends StatelessWidget {
  const BabSebelas5({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_5,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Ketangkasan adalah inti dari perang: manfaatkan ketidaksiapan musuh, buatlah jalur-jalur tak terduga, dan seranglah titik-titik yang tak terjaga.
### Prinsip-prinsip yang harus diperhatikan oleh pasukan yang melakukan invasi adalah: Semakin dalam kamu menembus suatu negara, semakin besar solidaritas pasukanmu, dan dengan demikian musuh tidak akan dapat mengalahkanmu.
### Lakukan serbuan di wilayah yang subur untuk memasok pasukanmu dengan makanan.
### Teliti kesejahteraan para prajuritmu, dan jangan memberatkan mereka secara berlebihan. Fokuskan energimu dan simpan kekuatanmu. Pertahankan pasukanmu terus-menerus bergerak, dan rancang rencana yang tidak terduga.

''';