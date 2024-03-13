import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabEmpat4 extends StatelessWidget {
  const BabEmpat4({super.key});

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
            //NoHalaman(pages: pages,itemOfPages:bab4_4,bab: 'Taktik',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### ditakdirkan untuk mengalami kekalahan pertama-tama dia berperang dan kemudian berusaha meraih kemenangan.
### Pemimpin yang ulung membentuk aturan moral, dan ketat dalam menerapkan metode dan disiplin; dengan demikian, dia dapat mengendalikan kesuksesan dalam kepemimpinannya.
### Dalam taktik militer, kita memiliki langkah pertama, yaitu pengukuran; langkah kedua, penilaian jumlah; langkah ketiga, perhitungan; langkah keempat, penyeimbangan peluang; dan langkah kelima, pencapaian kemenangan.
### Pengukuran ada karena bumi; penilaian jumlah ada karena pengukuran; perhitungan ada karena penilaian jumlah; penyeimbangan peluang ada karena perhitungan; dan kemenangan ada karena penyeimbangan peluang.

''';
