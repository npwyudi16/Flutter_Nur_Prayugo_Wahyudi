import 'package:flutter/material.dart';
import 'package:layout_telegram/widgets/daftarchat.dart';
import 'package:layout_telegram/widgets/drawer.dart';

class HomeMaterial extends StatelessWidget {
  const HomeMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0xff55879F),
          title: const Text(
            'Telegram',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.search,
                  size: 30,
                ))
          ],
        ),
        drawer: const DrawerTele(),
        body: const DaftarChat());
  }
}
