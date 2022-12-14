import 'package:flutter/cupertino.dart';
import 'package:telegram_cupertino/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Platfrom Widget Cupertino',
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: HomeCupertino(),
    );
  }
}
