import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsunzu/shared/drawer_items.dart';
import 'package:tsunzu/shared/gesture_ku.dart';
import 'package:tsunzu/shared/no_halaman.dart';

import '../data/bab.dart';
import '../shared/markdown_ku.dart';
import 'halaman.dart';



class Bab1_6 extends StatelessWidget {
  const Bab1_6({super.key});

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
        onSwipeKiri: () =>Get.to(
              () => bab1_5,
          transition: Transition.leftToRight,
          duration: Duration(seconds: 1),
        ),
        onSwipeKanan: ()=>Get.to(
              () => bab2_0,
          transition: Transition.rightToLeft,
          duration: Duration(seconds: 1),
        ),
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
                  teksData: dataSunZu['bab1_6'],
                ),
              )),
              NoHalaman(
                pages: halaman,
                itemOfPages: bab1_6,
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
