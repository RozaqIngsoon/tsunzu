import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsunzu/kontroller.dart';

class GestureKu extends StatelessWidget {
  const GestureKu({super.key,
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
        if (detail.delta.direction <= 0) {
          kontrol.tampilkanIklan();
          onSwipeKiri!();
        }
        //ke kanan
        if (detail.delta.direction > 0) {
          kontrol.tampilkanIklan();
          onSwipeKanan!();
        }
      },
      child: child,
    );
  }
}
