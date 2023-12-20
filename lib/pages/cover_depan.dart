import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoverDepan extends StatelessWidget {
  const CoverDepan({super.key});

  @override
  Widget build(BuildContext context) {
    double lebar = double.infinity;
    double tinggi = double.infinity;
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(8),
            height: lebar,
            width: tinggi,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background_1.png'),
                    fit: BoxFit.cover)),
            child:  Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'SENI PERANG',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Art of War\nSun Tzu',
                    style: GoogleFonts.merienda(
                      textStyle: TextStyle(color: Colors.yellow, fontSize: 65,fontWeight: FontWeight.bold),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                    'Sebuah strategi militer yang secara luas berpengaruh terhadap filosofi Barat dan Timur',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center),
                Spacer(),
                Text('-  Bahasa Indonesia -',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
                SizedBox(
                  height: 25,
                ),
                Text(' Sun Tzu : Tiongkok Klasik\n544 – 496 SM',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 50,
                ),
              ],
            )));
  }
}
