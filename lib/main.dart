import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tsunzu/home_screen.dart';
import 'package:tsunzu/kontroller.dart';

import 'halaman/halaman.dart';
import 'pages/pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp2());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Kontroller());
    var kontrol = Get.find<Kontroller>();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: halaman[0],
    );
  }
}

// class Kover extends StatelessWidget {
//   const Kover({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: coverDepan,
//       onVerticalDragUpdate: (detail){},
//       onHorizontalDragUpdate: (detail) {
//         if(detail.delta.direction>0){
//           Get.to(() => Isi(),transition: Transition.rightToLeft, duration: Duration(seconds: 1));
//         }
//       },
//     );
//   }
// }
//
//
// class Isi extends StatelessWidget {
//   const Isi({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: daftarIsi,
//       onVerticalDragUpdate: (detail){},
//       onHorizontalDragUpdate: (detail) {
//         if(detail.delta.direction<=0){
//           Get.to(() => Kover(),transition: Transition.leftToRight, duration: Duration(seconds: 1),);
//
//         }
//         if(detail.delta.direction>0){
//           Get.to(() => lastPage,transition: Transition.rightToLeft, duration: Duration(seconds: 1),);
//         }
//
//       },
//     );
//   }
// }
