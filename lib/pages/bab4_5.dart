import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEmpat5 extends StatelessWidget {
  const BabEmpat5({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab4_5,bab: 'Taktik',)
          ],
        ),
      ),
      floatingActionButton: menu(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}

const String teks = '''
### Pengukuran ada karena Bumi; Penilaian jumlah ada karena Pengukuran; Perhitungan ada karena Penilaian jumlah; Penyeimbangan peluang ada karena Perhitungan; dan Kemenangan ada karena Penyeimbangan peluang.
### Pasukan yang menang melawan pasukan yang kalah, ibarat berat satu pound ditempatkan di timbangan melawan satu butir biji.
### Serangan pasukan penakluk seperti pecahnya air yang terkumpul ke dalam jurang sedalam seribu depa.

''';
