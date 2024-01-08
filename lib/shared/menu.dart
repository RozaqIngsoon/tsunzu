import 'package:flutter/material.dart';

Widget menu(BuildContext context){
  return  InkWell(
    onTap: () => Scaffold.of(context).openDrawer(),
    child: Container(
      width: 50,
      height: 50,
      child: Icon(
            Icons.menu_book, size: 22,
            color: Colors.yellow,
          ),
    ),
  );
}