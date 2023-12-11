import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_screen.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    Widget isi(
        {required String no,
        required String judul,
        required String halaman,
        required int lompatke}) {
      return ListTile(
        leading: Text(
          no,
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        title: Text(judul, style: TextStyle(color: Colors.white, fontSize: 17)),
        trailing:
            Text(halaman, style: TextStyle(color: Colors.white, fontSize: 17)),
        onTap: () {
          controller.currentState?.goToPage(lompatke); //menggunakan index page
        },
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
              width: 50,
              color: Color(0xff1d2031),
            ),
            Expanded(
                child: Container(
              padding:
                  const EdgeInsets.only(top: 20, bottom: 8, left: 8, right: 8),
              child: ListView(
                children: [
                  Text('Daftar Isi',
                      style: GoogleFonts.merienda(
                        textStyle: TextStyle(color: Colors.amber, fontSize: 20),
                      )),
                  isi(
                      no: '1',
                      judul: 'Perencanaan',
                      halaman: '01',
                      lompatke: 2),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
