import 'package:flutter/material.dart';
import 'package:tsunzu/data.dart';

import '../shared/markdown_ku.dart';
import '../shared/no_halaman.dart';
import 'halaman.dart';

class Bab1_1 extends StatelessWidget {
  const Bab1_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          // color:Color(0xff1d2031) ,
            color: Colors.blueGrey),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 30),
                  color: Colors.white.withOpacity(0.5),
                  child: MarkDownku(
                    teksData: dataSunZu['bab1_1'],
                  ),
                )),
            NoHalaman(
              pages: halaman,
              itemOfPages: bab1_1,
              bab: 'Perencanaan', context: context,
            )
          ],
        ),
      ),

    );
  }
}
