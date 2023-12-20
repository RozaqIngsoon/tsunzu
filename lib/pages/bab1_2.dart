import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSatu2 extends StatelessWidget {
  const BabSatu2({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab1_2,bab: 'Perencanaan',)
          ],
        ),
      ),
      floatingActionButton: menu(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}

const String teks = '''
### nyawa mereka, tanpa tergoyahkan oleh bahaya apa pun.
### LANGIT mengartikan malam dan siang, dingin dan panas, waktu dan musim.
### BUMI mencakup jarak, besar dan kecil; bahaya dan keamanan; tanah terbuka dan celah sempit; peluang hidup dan mati.
### KOMANDAN melambangkan pengutamaan kebijaksanaan, ketulusan, kebaikan hati, keberanian, dan ketegasan.
### Dengan METODE DAN DISIPLIN dimaksudkan pengaturan tentara dalam subdivisi yang sesuai, tingkatan pangkat di antara para perwira, pemeliharaan jalan-jalan agar pasokan dapat mencapai tentara, dan pengendalian pengeluaran militer.
### Lima prinsip ini harus menjadi pengetahuan dasar setiap jenderal; 
''';
