import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tsunzu/home_screen.dart';
import 'package:tsunzu/kontroller.dart';
import 'dukungan.dart';

class DrawerItems extends StatefulWidget {
  const DrawerItems(
      {super.key});

  @override
  State<DrawerItems> createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  final kontrol = Get.find<Kontroller>();

  @override
  Widget build(BuildContext context) {


    UserAccountsDrawerHeader drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: kontrol.backgroundGelap,
      ),
      accountName: Text('Seni Perang Sun Tzu'),
      accountEmail:  Text('Buku strategi perang dari Tiongkok kuno'),
      currentAccountPicture:  CircleAvatar(
        backgroundColor: Colors.white,
        child: Image(image: AssetImage(kontrol.coverBuku)),
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: <Widget>[
                drawerHeader,
                ListTile(
                  // title: const Text('Lompat ke halaman :'),
                  title: TextField(
                    controller: kontrol.editingController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Lompat ke halaman :',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      print(kontrol.editingController.text);
                        controllerPageFlip.currentState?.goToPage(int.parse(kontrol.editingController.text)); //menggunakan index page
                        Navigator.pop(context);

                    },
                  ),
                ),
                const Divider(),
                ListTile(
                  title:  Text('Tandai halaman ini'),
                  trailing: Icon(
                    Icons.bookmark,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    kontrol.setBookmark(controllerPageFlip.currentState!.pageNumber);
                    kontrol.bookmarkNo.value = controllerPageFlip.currentState!.pageNumber;
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
                ListTile(
                  title:  Text('Halaman terahir ditandai : ${kontrol.bookmarkNo.value}'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    controllerPageFlip.currentState?.goToPage(kontrol.bookmarkNo.value); //menggunakan index page
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
                ListTile(
                  title: Text('Lompat ke daftar isi'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    controllerPageFlip.currentState?.goToPage(1); //menggunakan index page
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Colors.white,
          ),
          ListTile(
            tileColor: Colors.black12,
            title: const Text(
              "Bagikan app ini",
            ),
            trailing: const Icon(Icons.share, color: Colors.blue),
            onTap: () {
              // Share.share(
              //     'Aplikasi Pasaran Jawa :\nhttps://pasaranjawa.page.link/ingsoon',
              //     subject: 'Pasaran Jawa');
              Navigator.pop(context);
            },
          ),
          Container(
            height: 1,
            color: Colors.white,
          ),
          ListTile(
            tileColor: Colors.black12,
            title: const Text(
              "Dukungan",
            ),
            trailing: const Icon(Icons.auto_awesome, color: Colors.blue),
            onTap: () async {
              Navigator.pop(context);
              showDialog(
                context: context,
                barrierDismissible: true,
                builder: (_) => const Dukungan(),
              );
            },
          ),

        ],
      ),
    );
  }
}
