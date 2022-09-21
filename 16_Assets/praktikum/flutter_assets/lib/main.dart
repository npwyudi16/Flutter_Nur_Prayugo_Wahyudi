import 'package:flutter/material.dart';
import 'package:flutter_assets/screen/details_image1.dart';
import 'package:flutter_assets/screen/details_image2.dart';
import 'package:flutter_assets/screen/details_image3.dart';
import 'package:flutter_assets/screen/details_image4.dart';
import 'package:flutter_assets/screen/home.dart';

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
      title: 'Flutter Assets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'imageone': (context) => const ImageOne(),
        'imagetwo': (context) => const ImageTwo(),
        'imagethree': (context) => const ImageThree(),
        'imagefour': (context) => const ImageFour(),
      },
    );
  }
}
