import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsunzu/shared/gesture_ku.dart';

class Bab4_0 extends StatelessWidget {
  const Bab4_0({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureKu(
      onSwipeKiri: () => Get.to(() =>  ,transition: Transition.leftToRight, duration: Duration(seconds: 1),),
      onSwipeKanan: ()=> Get.to(() => ,transition: Transition.rightToLeft, duration: Duration(seconds: 1),),
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
                          'assets/no4.png',
                          height: 120,
                          width: 120,
                        ),
                        Text(
                          'Bab Empat',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Taktik',
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
                        '"Kesempatan untuk mengalahkan musuh diberikan oleh musuh itu sendiri."',
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
