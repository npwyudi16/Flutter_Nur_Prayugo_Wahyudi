import 'package:flutter/material.dart';
import 'package:flutter_ui_testing/model/checklist_model.dart';
import 'package:flutter_ui_testing/screen/home_screen.dart';
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
          create: (context) => Checklist(),
        )
      ],
      child: MaterialApp(
          theme: ThemeData(
            fontFamily: 'Ubuntu',
            primarySwatch: Colors.lightGreen,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          title: 'UI Testing',
          debugShowCheckedModeBanner: false,
          home: const HomeScreen()),
    );
  }
}
