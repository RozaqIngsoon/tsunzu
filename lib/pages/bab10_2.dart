import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSepuluh2 extends StatelessWidget {
  const BabSepuluh2({super.key});

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
            // NoHalaman(pages: pages,itemOfPages:bab10_2,bab: 'Medan Pertempuran',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Wilayah yang dapat ditinggalkan namun sulit untuk direbut kembali disebut “Medan yang rumit”.
### Dari posisi seperti ini, jika musuh tidak siap, kamu dapat maju dan mengalahkannya. Tetapi jika musuh sudah siap untuk kedatanganmu, dan kamu gagal mengalahkannya, maka, karena tidak mungkin untuk mundur, bencana akan terjadi.
### Ketika tidak ada pihak yang akan mendapatkan keuntungan dengan melakukan gerakan pertama, kondisi tersebut disebut sebagai "Medan yang memungkinkan penundaan".
### Dalam situasi seperti ini, meskipun musuh mungkin menawarkan umpan yang menarik, bijaksana untuk tidak maju, melainkan lebih baik mundur. Dengan demikian, kita dapat menggoda musuh untuk maju, dan ketika sebagian dari pasukannya keluar, kita dapat melancarkan serangan kita dengan

''';
