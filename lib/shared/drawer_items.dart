import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tsunzu/halaman/lastPage.dart';
import 'package:tsunzu/kontroller.dart';
import 'package:tsunzu/pages/daftar_istilah.dart';
import '../halaman/daftar_isi.dart';
import '../halaman/halaman.dart';
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
    return Column(
        children: [
          Expanded(
            child: ListView(
              children: <Widget>[
                drawerHeader,
                ListTile(
                  title:  Text('Ke penanda halaman : ${kontrol.bookmarkNo.value}'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    Get.to(() => halaman[kontrol.bookmarkNo.value],transition: Transition.rightToLeft, duration: Duration(seconds: 1),);
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
                ListTile(
                  title:  Text('Hapus penanda'),
                  trailing: Icon(
                    Icons.bookmark_remove,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    kontrol.setBookmark(0);
                    kontrol.bookmarkNo.value = 0;
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
                ListTile(
                  title: Text('Daftar Isi'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    Get.to(() => DaftarIsi(),transition: Transition.rightToLeft, duration: Duration(seconds: 1),);
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
                ListTile(
                  title: Text('Halaman glossary'),
                  subtitle: Text('daftar kata-kata atau istilah khusus'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    Get.to(() => DaftarIstilah(),transition: Transition.rightToLeft, duration: Duration(seconds: 1),);
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
                ListTile(
                  title: Text('Halaman penutup'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    Get.to(() => LastPage(),transition: Transition.rightToLeft, duration: Duration(seconds: 1),);
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
              Share.share(
                  'E-Book Seni Perang Sun Tzu :\nhttps://play.google.com/store/apps/details?id=com.ingsoon.tsunzu',
                  subject: 'Seni Perang Sun Tzu');
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
      );
  }
}
