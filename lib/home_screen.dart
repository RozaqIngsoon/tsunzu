
import 'package:flutter/material.dart';
import 'package:page_flip/page_flip.dart';

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
    return Scaffold(
      body: PageFlipWidget(
        key: controller,
        initialIndex: 0,
        children:pages,
      ),
    );
  }
}