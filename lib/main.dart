import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tsunzu/halaman/cover.dart';
import 'package:tsunzu/home_screen.dart';
import 'package:tsunzu/kontroller.dart';

import 'halaman/halaman.dart';
import 'pages/pages.dart';
import 'shared/drawer_items.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp2());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    Get.put(Kontroller());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Cover(),
        drawer:  Drawer(
          child: DrawerItems(),
        ),
        drawerEnableOpenDragGesture: false, //mematikan swipe drawer
      ),
    );
  }
}
