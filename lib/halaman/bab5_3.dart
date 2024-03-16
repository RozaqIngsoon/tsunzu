import 'package:flutter/material.dart';
import 'package:tsunzu/data/bab.dart';
import 'package:tsunzu/halaman/halaman.dart';

import '../shared/drawer_items.dart';
import '../shared/markdown_ku.dart';
import '../shared/no_halaman.dart';

class Bab5_3 extends StatelessWidget {
  const Bab5_3({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: DrawerItems(),
      ),
      drawerEnableOpenDragGesture: false,
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
                teksData: dataSunZu['bab5_3'],
              ),
            )),
            NoHalaman(
              pages: halaman,
              itemOfPages: bab5_3,
              bab: 'Energi',
              fungsiOpenDrawer: () => _scaffoldKey.currentState!.openDrawer(),
            )
          ],
        ),
      ),
    );
  }
}
