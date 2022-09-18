import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Badges extends StatelessWidget {
  const Badges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Chip(
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.deepPurple,
            label: Text('BADGE',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Badge(
            toAnimate: false,
            shape: BadgeShape.square,
            badgeColor: Colors.deepPurple,
            borderRadius: BorderRadius.circular(8),
            badgeContent: const Text('BADGE',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
          const SizedBox(
            height: 50,
          ),
          // ElevatedButton(
          //     onPressed: () => const HomePage(),
          //     child: const Text('Kembali Ke Home'))
        ],
      )),
    );
  }
}
