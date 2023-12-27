import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEmpat2 extends StatelessWidget {
  const BabEmpat2({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab4_2,bab: 'Taktik',)
          ],
        ),
      ),
      floatingActionButton: menu(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}

const String teks = '''
### mengimplikasikan taktik defensif; kemampuan untuk mengalahkan musuh berarti mengambil inisiatif menyerang.
### Berdiri dalam posisi defensif menunjukkan kekurangan kekuatan; menyerang menunjukkan kelebihan kekuatan.
### Jenderal yang mahir dalam pertahanan bersembunyi di tempat-tempat paling tersembunyi di dalam bumi; yang mahir dalam serangan muncul dari puncak tertinggi langit. Dengan demikian, di satu sisi kita memiliki kemampuan untuk melindungi diri; di sisi lain, kemenangan yang lengkap.
### Hanya melihat kemenangan saat itu sudah jelas bagi orang biasa bukanlah puncak keunggulan.
### Juga bukanlah puncak keunggulan jika Anda berperang dan menang, lalu seluruh Kekaisaran mengatakan, 

''';
