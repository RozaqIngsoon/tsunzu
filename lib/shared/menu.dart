import 'package:flutter/material.dart';

Widget menu(BuildContext context){
  return  InkWell(
    onTap: () => Scaffold.of(context).openDrawer(),
    child: Icon(
          Icons.menu, size: 22,
          color: Color(0xff1d2031),
        ),
  );
}