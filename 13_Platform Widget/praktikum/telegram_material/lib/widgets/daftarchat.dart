import 'package:flutter/material.dart';

class DaftarChat extends StatelessWidget {
  const DaftarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromRGBO(81, 124, 162, 1),
          child: const Icon(
            Icons.edit,
            color: Colors.white,
          )),
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
