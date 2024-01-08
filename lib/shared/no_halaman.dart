import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsunzu/home_screen.dart';
import 'package:tsunzu/kontroller.dart';
import 'package:tsunzu/shared/menu.dart';


Widget NoHalaman({required List<Widget> pages,  required Widget itemOfPages,required String bab,required BuildContext context}){
  final kontrol = Get.find<Kontroller>();
  kontrol.tampilkanIklan();
  return Container(
    height: 50,
    color: Color(0xff1d2031),
    padding: EdgeInsets.symmetric(vertical: 3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          ' $bab',
          style: TextStyle(color: Colors.yellow, fontStyle: FontStyle.italic),
        ),
        menu(context),
        Obx(
            ()=> InkWell(
            onTap: () {
              var hal = controllerPageFlip.currentState!.pageNumber;
              kontrol.setBookmark(hal);
              kontrol.bookmarkNo.value = hal;
            },
            child: Container(
              width: 50,
              height: 50,
              child: Icon(
                controllerPageFlip.currentState!.pageNumber ==kontrol.bookmarkNo.value? Icons.bookmark:Icons.bookmark_outline, size: 22,
                color: Colors.yellow,
              ),
            ),
          ),
        ),
        Text(
          '${pages.indexOf(itemOfPages).toString().length < 2 ? "0${pages.indexOf(itemOfPages)}" : pages.indexOf(itemOfPages)} ',
          style: TextStyle(color: Colors.yellow, fontStyle: FontStyle.italic),
        )
      ],
    ),
  );
}
