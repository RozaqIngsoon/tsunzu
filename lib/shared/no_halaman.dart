
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsunzu/kontroller.dart';
import 'package:tsunzu/shared/menu.dart';


Widget NoHalaman({required List<Widget> pages,  required Widget itemOfPages,required String bab,required BuildContext context}){
  final kontrol = Get.find<Kontroller>();
  kontrol.tampilkanIklan();
  kontrol.halSkg.value = pages.indexOf(itemOfPages);
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
        GetBuilder<Kontroller>(
          builder:
            (_kontrol)=> InkWell(
              onTap: () {
                // debugPrint('..........buat bookmark');
                var hal = _kontrol.halSkg.value;
                _kontrol.setBookmark(hal);
                _kontrol.bookmarkNo.value = hal;
                _kontrol.update();
                // debugPrint('..........kontrol.bookmarkNo.value : ${_kontrol.bookmarkNo.value}');
              },
              child:  Container(
                  width: 50,
                  height: 50,
                  child: Icon(
                    _kontrol.halSkg.value == _kontrol.bookmarkNo.value? Icons.bookmark:Icons.bookmark_outline, size: 22,
                    color: Colors.yellow,
                  ),
                ),
            ),
        ),

        Text(
          '${ kontrol.halSkg.value.toString().length < 2 ? "0${ kontrol.halSkg.value}" : {
            kontrol.halSkg.value
            }} ',
          style: TextStyle(color: Colors.yellow, fontStyle: FontStyle.italic),
        )
      ],
    ),
  );
}
