import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly3/src/view/home/home_view.dart';
import 'package:weekly3/src/view_model/user_view_model.dart';

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
          create: (context) => UserViewModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Service Center Computer',
        theme: ThemeData(
            primarySwatch: Colors.lightGreen,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const HomePage(),
      ),
    );
  }
}
