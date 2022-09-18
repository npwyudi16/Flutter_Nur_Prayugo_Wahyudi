import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_cupertino/widgets/tabview.dart';

class DaftarChat extends StatelessWidget {
  const DaftarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        leading: Padding(
          padding: EdgeInsets.only(top: 13),
          child: Text(
            'Edit',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        middle: Text('Chats'),
        trailing: Icon(CupertinoIcons.create_solid),
      ),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                const CupertinoSearchTextField(
                  placeholder: 'Search',
                  placeholderStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TabViewBuatan(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    daftarChat(
                      aset: 'assets/boy.png',
                      nama: "Atha",
                      time: "07.00am",
                      chat: "Selamat Pagi",
                    ),
                    const Divider(
                      height: 0.2,
                    ),
                    daftarChat(
                      aset: 'assets/boy1.png',
                      nama: "Luqman",
                      time: "11.11pm",
                      chat: "Gimana dek?",
                    ),
                    const Divider(
                      height: 0.2,
                    ),
                    daftarChat(
                      aset: 'assets/gamer.png',
                      nama: "Roni",
                      time: "09.00pm",
                      chat: "Mabar gais",
                    ),
                    const Divider(
                      height: 0.2,
                    ),
                    daftarChat(
                      aset: 'assets/hacker.png',
                      nama: "Bowo",
                      time: "12.00pm",
                      chat: "Butuh Bantuan?",
                    ),
                    const Divider(
                      height: 0.2,
                    ),
                    daftarChat(
                      aset: 'assets/man.png',
                      nama: "Umam",
                      time: "10.00am",
                      chat: "Iya pak",
                    ),
                    const Divider(
                      height: 0.2,
                    ),
                    daftarChat(
                      aset: 'assets/man1.png',
                      nama: "Elang",
                      time: "01.00am",
                      chat: "Pie gais",
                    ),
                    const Divider(
                      height: 0.2,
                    ),
                    daftarChat(
                      aset: 'assets/woman.png',
                      nama: "Shafira",
                      time: "11.00pm",
                      chat: "Good Night :)",
                    ),
                    const Divider(
                      height: 0.2,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile daftarChat({
    required String aset,
    required String nama,
    required String time,
    required String chat,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.only(top: 5, left: 10),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: ExactAssetImage(aset),
      ),
      title: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              nama,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Text(
              time,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ],
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              chat,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
