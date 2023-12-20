import 'package:flutter/material.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

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
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'TAMAT',
                  style: TextStyle(color: Colors.white,),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Risalah militer Tiongkok kuno ini telah dipelajari dan diterapkan di berbagai bidang, termasuk strategi bisnis.',
                    style: TextStyle(color: Colors.yellow, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset(
                    'assets/ikon_app.png',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Dukung ingsoon untuk terus menghadirkan buku-buku klasik yang bermanfaat.',
                    style: TextStyle(color: Colors.yellow, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      foregroundColor: Colors.yellow,
                      backgroundColor: Color(0xff1d2031),
                      side: BorderSide(color: Colors.white),
                      shadowColor: Colors.white,
                      elevation: 7,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.touch_app,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'klik dukungan sekarang',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.touch_app,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
