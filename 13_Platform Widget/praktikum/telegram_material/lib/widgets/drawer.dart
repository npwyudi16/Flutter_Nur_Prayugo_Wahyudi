import 'package:flutter/material.dart';

class DrawerTele extends StatelessWidget {
  const DrawerTele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 195,
                color: const Color(0xff55879F),
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 35, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: ExactAssetImage('assets/hacker.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Nur Prayugo Wahyudi',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '+6282333911964',
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              daftarDrawer(nama: "Grup Baru", ic: Icons.people),
              daftarDrawer(nama: "Kontak", ic: Icons.contact_page_sharp),
              daftarDrawer(nama: "Panggilan", ic: Icons.phone),
              daftarDrawer(
                  nama: "Pengguna Sekitar", ic: Icons.location_on_rounded),
              daftarDrawer(nama: "Pesan Tersimpan", ic: Icons.archive_sharp),
              daftarDrawer(nama: "Pengaturan", ic: Icons.settings),
              const Divider(
                height: 10,
              ),
              daftarDrawer(nama: "Undang Teman", ic: Icons.person_add),
              daftarDrawer(
                  nama: "Fitur Telegram", ic: Icons.question_mark_rounded),
            ],
          ),
        ),
      ),
    );
  }

  ListTile daftarDrawer({required String nama, required IconData ic}) {
    return ListTile(
      leading: Icon(
        ic,
        color: Colors.black54,
        size: 30,
      ),
      title: Text(
        nama,
        style: const TextStyle(
            color: Colors.black54, fontSize: 18, fontWeight: FontWeight.w800),
      ),
    );
  }
}
