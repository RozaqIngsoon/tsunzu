
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:tsunzu/kontroller.dart';
class Dukungan extends StatefulWidget {
  const Dukungan({Key? key}) : super(key: key);

  @override
  State<Dukungan> createState() => _DukunganState();
}

class _DukunganState extends State<Dukungan> {
  bool dukunganlain = false;

  @override
  Widget build(BuildContext context) {
    final kontrol = Get.find<Kontroller>();
    return Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: kontrol.backgroundGelap, border: Border.all(color: Colors.white)),
          child: Scaffold(
            backgroundColor: kontrol.backgroundGelap,
            body: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: ()=>Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,color: Colors.white
                      ),
                      child: Text('X',style: TextStyle(color: Colors.redAccent)),),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/ikon_qris.png'), height: 15),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Ingsoon',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Divider(thickness: 1,),
                      Text(
                        'Hai sobat, support ingsoon ya...\nDonasi lewat qris bisa menggunakan semua e-wallet & e-banking',
                        style: TextStyle( color: Colors.white),textAlign: TextAlign.left,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text('Terimakasih',style: TextStyle(color: Colors.white)),),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(thickness: 1,),
                      ListTile(
                        title: Text(
                          'i. Dengan 1 hp',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        subtitle: Text(
                            'Simpan qris ingsoon dengan cara klik tombol dibawah ini :',
                            style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () async {
                              ByteData imageData = await rootBundle.load('assets/ingsoon_qris.png');
                              Uint8List bytes = imageData.buffer.asUint8List();// get the image bytes
                              String imageName = 'ingsoon_qris';//nama file

                              final result = await ImageGallerySaver.saveImage(bytes, name: imageName);
                              if (result['isSuccess']) {
                                // Image saved successfully
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text('qris Ingsoon berhasil disimpan'),
                                ));
                              } else {
                                // Image failed to save
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text('Gagal menyimpan qris Ingsoon\nHarap ulangi lagi'),
                                ));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                                shadowColor: Colors.white,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                fixedSize: const Size(250, 50)),
                            child: Text(
                              'Simpan QRIS Ingsoon ke galeri',
                              textAlign: TextAlign.center,
                            )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ListTile(
                        subtitle: Text(
                            'Kemudian scan qr "qris ingsoon" yang sudah ada di galeri hp menggunakan e-wallet / mobile banking kesayangan kamu.',
                            style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(thickness: 1,),
                      ListTile(
                        title: Text(
                          'ii. Dengan 2 hp',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        subtitle: Text(
                            'Scan qris dibawah ini menggunakan e-wallet / mobile banking dari hp lain',
                            style: TextStyle(color: Colors.white)),
                      ),
                      Image(
                        image: AssetImage('assets/ingsoon_qris.png'),
                        height: 200,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ));
  }
}
