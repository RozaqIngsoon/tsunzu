import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsunzu/data/bab.dart';
import 'package:tsunzu/halaman/bab1_1.dart';
import 'package:tsunzu/halaman/bab1_2.dart';
import 'package:tsunzu/halaman/bab1_3.dart';
import 'package:tsunzu/shared/drawer_items.dart';
import 'package:tsunzu/shared/no_halaman.dart';

import '../kontroller.dart';
import '../shared/markdown_ku.dart';
import 'bab1_4.dart';
import 'halaman.dart';



class Bab1_3 extends StatelessWidget {
  const Bab1_3({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final kontrol = Get.find<Kontroller>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: DrawerItems(),
      ),
      drawerEnableOpenDragGesture: false,
      body: GestureDetector(
        onVerticalDragUpdate: (detail) {},
        onHorizontalDragUpdate: (detail) {
          //ke kiri
          if (detail.delta.direction <= 0) {
            kontrol.tampilkanIklan();
            Get.to(
              () => Bab1_2(),
              transition: Transition.leftToRight,
              duration: Duration(seconds: 1),
            );
          }
          //ke kanan
          if (detail.delta.direction > 0) {
            kontrol.tampilkanIklan();
            Get.to(
              () => Bab1_4(),
              transition: Transition.rightToLeft,
              duration: Duration(seconds: 1),
            );
          }
        },
        child: Container(
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
                  teksData: dataSunZu['bab1_3'],
                ),
              )),
              NoHalaman(
                pages: halaman,
                itemOfPages: bab1_3,
                bab: 'Perencanaan',
                fungsiOpenDrawer: () => _scaffoldKey.currentState!.openDrawer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
