import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsunzu/data/bab.dart';
import 'package:tsunzu/halaman/bab9_4.dart';
import 'package:tsunzu/halaman/bab9_6.dart';
import 'package:tsunzu/halaman/halaman.dart';
import 'package:tsunzu/shared/gesture_ku.dart';

import '../shared/drawer_items.dart';
import '../shared/markdown_ku.dart';
import '../shared/no_halaman.dart';

class Bab9_5 extends StatelessWidget {
  const Bab9_5({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: DrawerItems(),
      ),
      drawerEnableOpenDragGesture: false,
      body: GestureKu(
        onSwipeKiri: () => Get.to(() => Bab9_4() ,transition: Transition.leftToRight, duration: Duration(seconds: 1),),
        onSwipeKanan: ()=> Get.to(() => Bab9_6() ,transition: Transition.rightToLeft, duration: Duration(seconds: 1),),

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
                  teksData: dataSunZu['bab9_5'],
                ),
              )),
              NoHalaman(
                pages: halaman,
                itemOfPages: bab9_5,
                bab: 'Pergerakan Pasukan',
                fungsiOpenDrawer: () => _scaffoldKey.currentState!.openDrawer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}