import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsunzu/halaman/bab1_1.dart';
import 'package:tsunzu/halaman/daftar_isi.dart';
import 'package:tsunzu/kontroller.dart';

class Bab1_0 extends StatelessWidget {
  const Bab1_0({super.key});

  @override
  Widget build(BuildContext context) {
    final kontrol = Get.find<Kontroller>();
    return GestureDetector(
      onVerticalDragUpdate: (detail){},
      onHorizontalDragUpdate: (detail) {
        //ke kiri
        if(detail.delta.direction<=0){
          kontrol.tampilkanIklan();
          Get.to(() =>  DaftarIsi(),transition: Transition.leftToRight, duration: Duration(seconds: 1),);
        }
        //ke kanan
        if(detail.delta.direction>0){
          kontrol.tampilkanIklan();
          Get.to(() => Bab1_1(),transition: Transition.rightToLeft, duration: Duration(seconds: 1),);
        }
      },
      child: Scaffold(
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
                          'assets/no1.png',
                          height: 120,
                          width: 120,
                        ),
                        Text(
                          'Bab Satu',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Perencanaan',
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
                        '"Seni perang memiliki arti penting yang vital bagi negara"',
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
      ),
    );
  }
}
