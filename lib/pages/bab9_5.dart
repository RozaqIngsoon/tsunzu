import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSembilan5 extends StatelessWidget {
  const BabSembilan5({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab9_5,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### Gerakan di antara pepohonan hutan menunjukkan musuh sedang maju. Munculnya sejumlah layar di tengah rumput tebal berarti musuh ingin membuat kita curiga.
### Munculnya burung-burung yang beterbangan merupakan tanda adanya penyergapan. Hewan-hewan yang terkejut menunjukkan bahwa serangan tiba-tiba akan datang.
### Jika ada debu yang membubung tinggi, itu tandanya kereta sedang melaju; bila debunya sedikit, tetapi tersebar di area yang luas, itu pertanda pendekatan infanteri.  Ketika debu bercabang ke berbagai arah, itu menunjukkan bahwa pasukan telah
### dikirim untuk mengumpulkan kayu bakar. Beberapa awan debu yang bergerak bolak-balik menandakan bahwa pasukan sedang berkemah.
### Kata-kata yang rendah hati dan peningkatan persiapan adalah tanda
''';
