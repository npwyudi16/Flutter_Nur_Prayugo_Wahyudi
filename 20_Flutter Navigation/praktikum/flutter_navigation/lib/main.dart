import 'package:flutter/material.dart';
import 'package:flutter_navigation/screens/contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Contact(),
    );
  }
}