import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tsunzu/shared/menu.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSebelas8 extends StatelessWidget {
  const BabSebelas8({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab11_8,bab: 'Sembilan Situasi',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Seorang ahli taktik yang cakap dapat dibandingkan dengan SHUAI-JAN. SHUAI-JAN merupakan seekor ular yang ditemukan di pegunungan Ch‘ang. Seranglah kepala ular itu, dan Anda akan diserang oleh ekornya; seranglah ekornya, dan Anda akan diserang oleh kepala ularnya; seranglah bagian tengahnya, dan Anda akan diserang oleh kepala dan ekornya.
### Dalam hal ini, Shuai-Jan menggambarkan bahwa dalam pasukan yang terlatih dan terorganisasi dengan baik, anggota pasukan akan bekerja sama seperti bagian tubuh yang berbeda dalam membantu satu sama lain. Bahkan ketika mereka dihadapkan pada kesulitan atau bahaya, mereka akan saling membantu, seperti tangan kiri yang membantu tangan kanan.
### Ini menunjukkan bahwa dalam perang,
''';