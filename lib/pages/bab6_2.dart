import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEnam2 extends StatelessWidget {
  const BabEnam2({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab6_2,bab: 'Titik Lemah & Kuat',)
          ],
        ),
      ),
      floatingActionButton: menu(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}

const String teks = '''
### tenang, dia dapat memaksa musuhnya untuk bergerak.
### Muncul di titik-titik yang harus segera dipertahankan oleh musuh; bergerak cepat ke tempat-tempat di mana Anda tidak diharapkan.
### Sebuah pasukan dapat bergerak jauh tanpa kesulitan jika bergerak melalui wilayah di mana musuh tidak berada.
### Anda dapat yakin berhasil dalam serangan Anda jika hanya menyerang tempat-tempat yang tidak dijaga. Anda dapat memastikan keamanan pertahanan Anda jika hanya memegang posisi yang tidak dapat diserang.
### Oleh karena itu, seorang jenderal itu mahir dalam serangan jika lawannya tidak tahu apa yang harus dipertahankan; dan dia mahir dalam pertahanan jika lawannya tidak tahu apa yang harus diserang

''';
