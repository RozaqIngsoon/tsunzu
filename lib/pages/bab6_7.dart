import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEnam7 extends StatelessWidget {
  const BabEnam7({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab6_7,bab: 'Titik Lemah & Kuat',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### jumlah daripada milik kita, itu tidak akan memberi mereka keuntungan dalam hal kemenangan. Saya katakan bahwa kemenangan bisa dicapai.
### Meskipun musuh memiliki kekuatan lebih banyak, kita dapat menghindari pertempuran. Rencanakan untuk mengetahui rencananya dan potensi keberhasilannya. Bangkitkan musuh, dan pelajari prinsip aksi atau ketidakaktifannya.
### Dalam merancang taktik, puncak efektivitas adalah menjaga agar taktik tersebut tetap rahasia; jaga kerahasiaan disposisimu*, dan kamu akan terlindungi dari mata-mata musuh yang cerdik dan rencananya yang licik.
### Bagaimana kemenangan dapat dihasilkan dari taktik musuh - itulah yang jarang bisa dimengerti oleh banyak orang.
### Semua orang dapat melihat cara saya menaklukkan, tetapi yang tidak terlihat

''';
