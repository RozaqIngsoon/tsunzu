
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsunzu/kontroller.dart';



Widget NoHalaman({required List<Widget> pages,  required Widget itemOfPages,required String bab,required Function() fungsiOpenDrawer}){
  final kontrol = Get.find<Kontroller>();
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
        // Obx(()=> Text('${kontrol.timerValue.value}',style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic))),
        InkWell(
          onTap: fungsiOpenDrawer,
          child: Container(
            width: 50,
            height: 50,
            child: Icon(
              Icons.menu_book, size: 22,
              color: Colors.yellow,
            ),
          ),
        ),
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
                //cari teks
                // String searchText ='perang diatur';
                // for(var entry in dataSunZu.entries){
                //   if(entry.key.contains(searchText) || entry.value.contains(searchText)){
                //     debugPrint('text ditemukan di key :${entry.key} atau value : ${entry.value}');
                //     String teksOriginal = entry.value;
                //     //substring
                //     int startIndex = teksOriginal.indexOf(searchText);
                //     int endIndex = startIndex + searchText.length + 6;//3 kata didepan & 3 di belakang
                //     String extractedText = teksOriginal.substring(startIndex-3,endIndex);
                //     debugPrint('teks yang ditemukan : $extractedText');
                //     //split dan join
                //     List<String> splitTeks = teksOriginal.split(searchText);
                //     String extractedText2 = [splitTeks[0].split(' ').last, searchText , splitTeks[1].split(' ')[0]].join(' ');
                //     debugPrint('teks yang ditemukan2 : $extractedText2');
                //   }
                // }
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
          '${ kontrol.halSkg.value.toString().length < 2 ? "0${ kontrol.halSkg.value}" :
            kontrol.halSkg.value
            } ',
          style: TextStyle(color: Colors.yellow, fontStyle: FontStyle.italic),
        )
      ],
    ),
  );
}
