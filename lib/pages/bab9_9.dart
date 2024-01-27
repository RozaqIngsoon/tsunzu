import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSembilan9 extends StatelessWidget {
  const BabSembilan9({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab9_9,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### yang sangat sulit.
###	Ketika utusan dikirim dengan pujian di bibir mereka, itu merupakan tanda bahwa musuh menginginkan gencatan senjata.
###	Jika pasukan musuh marah bergerak maju dan tetap menghadap pasukan kita untuk waktu yang lama tanpa terlibat dalam pertempuran atau pergi, situasi seperti ini memerlukan kewaspadaan dan kehati-hatian yang besar.
###	Jika jumlah pasukan kita tidak lebih banyak daripada musuh, itu sudah cukup; itu hanya berarti bahwa serangan langsung tidak dapat dilakukan. Yang bisa kita lakukan hanyalah mengumpulkan semua kekuatan yang tersedia, mengawasi musuh dengan cermat, dan mendapatkan bantuan pasukan tambahan.
### Mereka yang tidak memikirkan
''';
