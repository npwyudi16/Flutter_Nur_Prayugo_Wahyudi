import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'listview'),
                child: const Text('Klik untuk Melihat ListView')),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'gridview'),
                child: const Text('Klik untuk Melihat GridView'))
          ],
        ),
      ),
    );
  }
}
