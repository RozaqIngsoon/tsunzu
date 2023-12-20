import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../shared/markdown_ku.dart';
import '../shared/no_halaman.dart';
import 'pages.dart';

class BabTiga6 extends StatelessWidget {
  const BabTiga6({super.key});

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
              padding: EdgeInsets.only(top: 30),
              color: Colors.white.withOpacity(0.5),
              child: MarkDownku(teksData:teks ,)
            )),
            NoHalaman(pages: pages,itemOfPages:bab3_6,bab: 'Strategi',)
          ],
        ),
      ),
    );
  }
}

const String teks = '''
### yang tidak siap.
### 5. Dia akan menang bila memiliki kemampuan militer dan tidak diintervensi oleh penguasa.
### Maka ada pepatah: Jika Anda mengenal musuh dan mengenal diri sendiri, Anda tidak perlu takut terhadap hasil dari seratus pertempuran. Jika Anda mengenal diri sendiri tetapi tidak mengenal musuh, untuk setiap kemenangan yang didapat Anda juga akan menderita kekalahan. Jika Anda tidak mengenal baik musuh maupun diri sendiri, Anda akan tunduk dalam setiap pertempuran.

''';
