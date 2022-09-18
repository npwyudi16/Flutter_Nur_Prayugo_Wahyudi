import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter CLI & Packages Management')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'badges'),
              child: const Text('Klik untuk Melihat Badges')),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'barcodepage'),
              child: const Text('Klik untuk Melihat BarcodePages'))
        ],
      )),
    );
  }
}
