import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(8),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background_1.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                // color: Colors.red,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/no2.png',
                        height: 120,
                        width: 120,
                      ),
                      Text(
                        'Bab Dua',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Peperangan',
                        style: GoogleFonts.merienda(
                          textStyle: TextStyle(
                              color: Colors.yellow,
                              fontSize: 35,
                              letterSpacing: 1.5),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                  // color: Colors.blue,
                  ),
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.only(left: 8, right: 8),
                  color: Colors.blueGrey.withOpacity(0.5),
                  height: 150,
                  child: Center(
                    child: Text(
                      '"Tidak ada contoh sebuah negara yang mendapat manfaat dari perang yang berkepanjangan"',
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
