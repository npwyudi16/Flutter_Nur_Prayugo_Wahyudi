import 'package:flutter/material.dart';
import 'package:packages_management/badges.dart';
import 'package:packages_management/barcode.dart';
import 'package:packages_management/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter CLI & Packages Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'badges': (context) => const Badges(),
        'barcodepage': (context) => const BarcodePage()
      },
    );
  }
}
