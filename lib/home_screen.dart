import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_flip/page_flip.dart';
import 'package:tsunzu/kontroller.dart';
import 'package:tsunzu/pages/lastPage.dart';
import 'package:tsunzu/shared/drawer_items.dart';

import 'pages/pages.dart';

final controllerPageFlip = GlobalKey<PageFlipWidgetState>();

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(Kontroller());
    var kontrol = Get.find<Kontroller>();
    return Scaffold(
      body: Obx(
        () => kontrol.bookmarkNo.value == 1000
            ? Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(),
                    Text(
                    'Mengambil data',
                    style: TextStyle(color: Colors.white),
                                  ),
                  ],
                ))
            : PageFlipWidget(
                key: controllerPageFlip,
                initialIndex: kontrol.bookmarkNo.value==1000?0:kontrol.bookmarkNo.value,
                lastPage: LastPage(),
                children: pages,
              ),
      ),
      drawer: const Drawer(
        child: DrawerItems(),
      ),
      drawerEnableOpenDragGesture: false,//mematikan swipe drawer
    );
  }
}
