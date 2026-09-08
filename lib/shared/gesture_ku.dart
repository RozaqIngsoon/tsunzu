import 'package:flutter/material.dart';

class GestureKu extends StatelessWidget {
  const GestureKu({
    super.key,
    this.onSwipeKiri,
    this.onSwipeKanan,
    required this.child,
  });

  final VoidCallback? onSwipeKiri;
  final VoidCallback? onSwipeKanan;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null) {
          // Swipe right to left (next page)
          if (details.primaryVelocity! < -200 && onSwipeKanan != null) {
            onSwipeKanan!();
          }
          // Swipe left to right (previous page)
          else if (details.primaryVelocity! > 200 && onSwipeKiri != null) {
            onSwipeKiri!();
          }
        }
      },
      child: child,
    );
  }
}
