import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture/screen/contact/contact_screen.dart';
import 'package:flutter_mvvm_architecture/screen/contact/contact_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ContactViewModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MVVM Architecture',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ContactPage(),
      ),
    );
  }
}
