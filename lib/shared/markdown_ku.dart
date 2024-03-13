import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkDownku extends StatelessWidget {
  const MarkDownku({super.key, required this.teksData});
  final String teksData;

  @override
  Widget build(BuildContext context) {
    return Markdown(
      data: teksData,
      styleSheet: MarkdownStyleSheet(
        h2: TextStyle(fontSize: MediaQuery.of(context).size.width / 18,color: Colors.black,fontWeight: FontWeight.bold ),
        h3: TextStyle(fontSize: MediaQuery.of(context).size.width / 20,color: Colors.black ),
        listBullet: TextStyle(fontSize: MediaQuery.of(context).size.width / 21,color: Colors.black ),
        h4: TextStyle(fontSize: MediaQuery.of(context).size.width / 21,color: Colors.black ),
      ),
    );

    // return MarkdownBody(
    //   data: teksData,
    //   styleSheet: MarkdownStyleSheet(
    //     h2: TextStyle(fontSize: MediaQuery.of(context).size.width / 18,color: Colors.black,fontWeight: FontWeight.bold ),
    //     h3: TextStyle(fontSize: MediaQuery.of(context).size.width / 20,color: Colors.black ),
    //     listBullet: TextStyle(fontSize: MediaQuery.of(context).size.width / 21,color: Colors.black ),
    //     h4: TextStyle(fontSize: MediaQuery.of(context).size.width / 21,color: Colors.black ),
    //   ),
    // );
  }
}
