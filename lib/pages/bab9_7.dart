import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSembilan7 extends StatelessWidget {
  const BabSembilan7({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab9_7,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Jika orang-orang yang dikirim untuk mengambil air pertama-tama minum sendiri, itu mungkin menunjukkan bahwa tentara mengalami kehausan.
### Jika mereka melihat peluang keuntungan tetapi tidak berusaha untuk memanfaatkannya, itu mungkin menunjukkan bahwa tentara mereka sudah kelelahan.
### Jika burung-burung berkumpul di suatu tempat, itu berarti tempat itu tidak terisi. 
### Kericuhan pada malam hari menandakan ketegangan.
### Jika ada kerusuhan di kamp, otoritas sang jenderal lemah. Jika bendera-bendera dan panji-panji berpindah-pindah, ada potensi pemberontakan. Jika para perwira marah, itu berarti para prajuritnya lelah.
###	Ketika sebuah pasukan memberi makan kuda-kudanya dengan biji-bijian dan membunuh ternaknya untuk makanan,

''';
