import 'package:flutter/material.dart';
import 'package:flutter_layout/home.dart';
import 'package:flutter_layout/screen/gridview.dart';
import 'package:flutter_layout/screen/listview.dart';

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
      title: 'Flutter Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'listview': (context) => const LisViu(),
        'gridview': (context) => const GridViu(),
      },
    );
  }
}
