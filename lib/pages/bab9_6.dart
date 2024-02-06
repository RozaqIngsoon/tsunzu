import 'package:flutter/material.dart';
import 'package:tsunzu/shared/markdown_ku.dart';

import '../shared/no_halaman.dart';
import 'pages.dart';

class BabSembilan6 extends StatelessWidget {
  const BabSembilan6({super.key});

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
            NoHalaman(pages: pages,itemOfPages:bab9_6,bab: 'Pergerakan Pasukan',context: context)
          ],
        ),
      ),

    );
  }
}

const String teks = '''
### dikirim untuk mengumpulkan kayu bakar. Beberapa awan debu yang bergerak bolak-balik menandakan bahwa pasukan sedang berkemah.
### Kata-kata yang rendah hati dan peningkatan persiapan adalah tanda bahwa musuh akan maju. Bahasa yang kasar dan tindakan maju seolah-olah untuk menyerang adalah tanda bahwa dia akan mundur.
### Ketika kendaraan ringan keluar terlebih dahulu dan mengambil posisi di sayap, itu adalah tanda bahwa musuh sedang membentuk formasi pertempuran.
### Tawaran perdamaian yang tidak disertai dengan perjanjian bersumpah menunjukkan adanya rencana jahat.
### Jika terjadi banyak kegiatan berlarian dan para prajurit mulai membentuk barisan, itu menandakan bahwa saat-saat kritis telah tiba.

''';
