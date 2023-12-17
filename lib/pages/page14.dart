import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class Page14 extends StatelessWidget {
  const Page14({super.key});

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
            NoHalaman(pages: pages,itemOfPages:page14,bab: 'Strategi',)
          ],
        ),
      ),
    );
  }
}

const String konten1 = '''
### Dengan demikian, kita dapat mengetahui bahwa ada lima hal penting untuk meraih kemenangan :
### 1. Dia akan menang bila tahu kapan harus berperang dan kapan tidak perlu berperang.
### 2. Dia akan menang bila tahu bagaimana menghadapi pasukan yang lebih unggul maupun lebih lemah.
### 3. Dia akan menang jika pasukannya diberdayakan oleh semangat yang sama di semua tingkatan.
### 4. Dia akan menang bila, setelah mempersiapkan dirinya sendiri, menunggu untuk menyerang musuh yang tidak siap.
### 5. Dia akan menang bila memiliki kemampuan militer dan tidak diintervensi oleh penguasa.
### Maka ada pepatah: Jika Anda mengenal musuh dan mengenal diri sendiri, Anda tidak perlu takut terhadap hasil dari seratus pertempuran. Jika Anda mengenal diri sendiri tetapi tidak mengenal musuh, untuk setiap kemenangan yang didapat Anda juga akan menderita kekalahan. Jika Anda tidak mengenal baik musuh maupun diri sendiri, Anda akan tunduk dalam setiap pertempuran.

''';
