
import 'package:flutter/material.dart';
import 'package:page_flip/page_flip.dart';
import 'package:tsunzu/page.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = GlobalKey<PageFlipWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageFlipWidget(
        key: _controller,
        initialIndex: 0,
        children: <Widget>[
          for (var i = 0; i < 10; i++) DemoPage(page: i),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.looks_5_outlined),
        onPressed: () {
          _controller.currentState?.goToPage(4);//menggunakan index
        },
      ),
    );
  }
}