import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

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
              child: Markdown(
                data: konten1,
              ),
            )),
            NoHalaman(pages: pages,itemOfPages:page4,bab: 'Perencanaan',)
          ],
        ),
      ),
    );
  }
}

const String konten1 = '''
### Berdasarkan pada sejauh mana keadaan menguntungkan, seseorang sebaiknya memodifikasi rencananya. Semua perang didasarkan pada tipuan. Oleh karena itu, saat kita mampu menyerang, kita harus tampak tidak mampu; saat menggunakan kekuatan kita, kita harus tampak tidak aktif; saat kita berada dekat, kita harus membuat musuh percaya bahwa kita jauh; saat kita jauh, kita harus membuatnya percaya bahwa kita dekat. Tawarkan umpan untuk memikat musuh. Tertipu, dan hancurkan dia. Jika dia merasa aman di semua titik, bersiaplah untuk menghadapinya. Jika dia memiliki kekuatan yang lebih unggul, hindari dia. Jika lawan Anda memiliki sifat yang mudah marah, usahakan untuk mengiritasinya. Berpura-pura lemah, agar dia menjadi sombong. Jika dia sedang bersantai, jangan beri dia istirahat. Jika pasukannya bersatu, pisahkan mereka. Serang dia di tempat yang tidak siap, muncul di tempat yang tidak diharapkan. 
### Taktik militer ini, yang mengarah pada kemenangan, tidak boleh diungkapkan sebelumnya. Sekarang, jenderal yang memenangkan pertempuran melakukan banyak perhitungan di tenda tempat pertempuran berlangsung. Jenderal yang kalah dalam pertempuran hanya melakukan sedikit perhitungan sebelumnya. Dengan demikian, banyak perhitungan mengarah pada kemenangan, dan sedikit perhitungan mengarah pada kekalahan; apalagi tidak ada perhitungan sama sekali.
''';
