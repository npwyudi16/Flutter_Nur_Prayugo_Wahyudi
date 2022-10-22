import 'package:finite_state_machine/src/view/user/user_view.dart';
import 'package:finite_state_machine/src/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
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
          create: (context) => UserViewModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Finite State Machine & Unit Testing',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: const UserPage(),
      ),
    );
  }
}
