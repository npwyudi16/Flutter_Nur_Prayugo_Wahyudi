import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:no2_storage_bloc/cubit/data_cubit.dart';
import 'package:no2_storage_bloc/screens/register_screen.dart';
import 'package:no2_storage_bloc/shared_preferences/cache_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String email = '';
  late SharedPreferences loginData;

  @override
  void initState() {
    initial();
    super.initState();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      name = loginData.getString('name').toString();
      email = loginData.getString('email').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Color.fromARGB(255, 10, 109, 158),
          actions: [
            BlocBuilder<DataCubit, DataState>(
              builder: (context, state) {
                return IconButton(
                  icon: const Icon(Icons.logout_rounded),
                  onPressed: () {
                    CacheHelper.saveData(key: 'register', value: true);
                    CacheHelper.removeData(key: 'name').whenComplete(() {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ));
                    });
                  },
                );
              },
            )
          ],
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1664110320562-1858ec498640?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDg3fENEd3V3WEpBYkV3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                  fit: BoxFit.cover),
            ),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  const SizedBox(
                    height: 70,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Welcome',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      name,
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      email,
                      style: const TextStyle(fontSize: 25),
                    ),
                  )
                ]))));
  }
}
