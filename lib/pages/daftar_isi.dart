import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsunzu/pages/pages.dart';

import '../home_screen.dart';

class DaftarIsi extends StatelessWidget {
  const DaftarIsi({super.key});

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery
        .of(context)
        .size
        .width;
    Widget isi({
      required String judul,
      required String halaman,
      required int lompatke}) {
      return ListTile(
        title: Text(
            judul, style: TextStyle(color: Colors.white, fontSize: lebar / 20)),
        subtitle: Divider(color: Colors.white),
        trailing:
        Text(halaman, style: TextStyle(color: Colors.white, fontSize: lebar / 20)),
        onTap: () {
          controllerPageFlip.currentState?.goToPage(
              lompatke); //menggunakan index page
        },
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      );
    }

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
        ),
        child: Row(
          children: [
            Container(
              width: 25,
              color: Color(0xff1d2031),
            ),
            Expanded(
                child: Container(
                  padding:
                  const EdgeInsets.only(top: 20, bottom: 8, right: 8),
                  child: ListView(
                    children: [
                      Text('  Daftar Isi',
                          style: GoogleFonts.merienda(
                            textStyle: TextStyle(
                                color: Colors.yellow,
                                fontSize: lebar / 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0),
                          )),
                      isi(
                        judul: 'Perencanaan',
                        halaman: '0${pages.indexOf(bab1_cover)}',
                        lompatke: pages.indexOf(bab1_cover),),
                      isi(
                        judul: 'Peperangan',
                        halaman: '0${pages.indexOf(bab2_cover)}',
                        lompatke: pages.indexOf(bab2_cover),),
                      isi(
                        judul: 'Strategi',
                        halaman: '${pages.indexOf(bab3_cover)}',
                        lompatke: pages.indexOf(bab3_cover),),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
