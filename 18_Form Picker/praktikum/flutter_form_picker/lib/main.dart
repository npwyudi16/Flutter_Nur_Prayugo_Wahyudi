import 'package:flutter/material.dart';
import 'package:flutter_form_picker/screen/create_post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Form Picker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CreatePost(),
    );
  }
}
