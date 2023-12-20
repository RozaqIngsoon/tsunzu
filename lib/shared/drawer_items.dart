import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tsunzu/kontroller.dart';
import 'dukungan.dart';

class DrawerItems extends StatefulWidget {
  const DrawerItems(
      {super.key});

  @override
  State<DrawerItems> createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  bool checked = false;
  int _bookmark = 0;
  final kontrol = Get.find<Kontroller>();

  _getBookmark() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    int intValue = prefs.getInt(kontrol.bookmark) ?? 0;
    setState(() => _bookmark = intValue);
  }

  Future<void> _setBookmark(int hal) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(kontrol.bookmark, hal);
  }

  @override
  Widget build(BuildContext context) {

    if (checked == false) {
      _getBookmark();
      setState(() {
        checked = true;
      });
    }

    UserAccountsDrawerHeader drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: kontrol.backgroundGelap,
      ),
      accountName: Text('judulBuku'),
      accountEmail:  Text('subJudulBuku'),
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
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.auto_stories_outlined,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      if(kontrol.editingController.value.text.isEmpty){
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                          content: Text('Nomor halaman yang hendak dibuka belum diisi'),
                        ));
                      }else{
      
                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
                const Divider(),
                ListTile(
                  title: (_bookmark != 0)
                      ? Text('Buka penanda halaman ( $_bookmark )')
                      : const Text('Buat penanda halaman ini'),
                  trailing: Icon(
                    (_bookmark != 0) ? Icons.auto_stories : Icons.bookmark,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    if (_bookmark != 0) {
                      Navigator.pop(context);
                    } else {
                      Navigator.pop(context);
                    }
                  },
                ),
                const Divider(),
                ListTile(
                  title: Text('Lompat ke daftar isi'),
                  trailing: Icon(
                    Icons.list_outlined,
                    color: Colors.blue,
                  ),
                  onTap: () {
      
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
