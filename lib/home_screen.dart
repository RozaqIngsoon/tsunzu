
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_flip/page_flip.dart';
import 'package:tsunzu/kontroller.dart';
import 'package:tsunzu/pages/lastPage.dart';
import 'package:tsunzu/shared/drawer_items.dart';

import 'pages/pages.dart';

final controller = GlobalKey<PageFlipWidgetState>();

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
    return Scaffold(
      body: PageFlipWidget(
        key: controller,
        initialIndex: 0,
        lastPage: LastPage(),
        children:pages,
      ),
      drawer: const Drawer(
        child: DrawerItems(),
      ),
    );
  }
}