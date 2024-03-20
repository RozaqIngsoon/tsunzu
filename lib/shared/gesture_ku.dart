import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsunzu/kontroller.dart';

class GestureKu extends StatelessWidget {
  const GestureKu(
      {super.key,
      this.onSwipeKiri, // Callback for swipe left action (optional)
      this.onSwipeKanan, // Callback for swipe right action (optional)
      required this.child});

  final VoidCallback? onSwipeKiri; // Function type for swipe left callback
  final VoidCallback? onSwipeKanan; // Function type for swipe right callback

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final kontrol = Get.find<Kontroller>();
    return GestureDetector(
      onVerticalDragUpdate: (detail) {},
      onHorizontalDragUpdate: (detail) {
        //ke kiri
        if (detail.delta.direction <= 0 && onSwipeKiri!= null) {
          kontrol.tampilkanIklan();
          onSwipeKiri!();
        }
        //ke kanan
        if (detail.delta.direction > 0 && onSwipeKanan!=null ) {
          kontrol.tampilkanIklan();
          onSwipeKanan!();
        }
      },
      child: Obx(() => kontrol.connectionStatus.value == ConnectivityResult.none
          ? Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  image: DecorationImage(
                      image: AssetImage('assets/ikon_app.png'),
                      fit: BoxFit.scaleDown)),
              child:  Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.red.shade900)
                  ),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    '- Koneksi internet dibutuhkan -',
                    style: TextStyle(
                        color: Colors.red.shade900, fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          : child),
    );
  }
}
