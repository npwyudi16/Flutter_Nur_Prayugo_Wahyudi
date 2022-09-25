import 'package:flutter/material.dart';
import 'package:flutter_form_input_button/screen/addcontact.dart';
import 'package:flutter_form_input_button/screen/home.dart';

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
      title: 'Flutter Form Input Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ListContact(),
        'addcontact': (context) => const AddContact(),
      },
    );
  }
}
