import 'package:flutter/material.dart';

class NoHalaman extends StatelessWidget {
  const NoHalaman(
      {super.key,
      required this.pages,
      required this.itemOfPages,
      required this.bab});

  final List<Widget> pages;
  final Widget itemOfPages;
  final String bab;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1d2031),
      padding: EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            ' $bab',
            style: TextStyle(color: Colors.yellow, fontStyle: FontStyle.italic),
          ),
          Icon(
            Icons.menu_book,
            color: Colors.amber,
          ),
          Text(
            '${pages.indexOf(itemOfPages).toString().length < 2 ? "0${pages.indexOf(itemOfPages)}" : pages.indexOf(itemOfPages)} ',
            style: TextStyle(color: Colors.yellow, fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
