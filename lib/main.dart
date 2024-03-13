import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tsunzu/halaman/cover.dart';
import 'package:tsunzu/kontroller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Kontroller());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Cover(),
      ),
    );
  }
}
