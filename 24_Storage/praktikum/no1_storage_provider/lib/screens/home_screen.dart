import 'package:flutter/material.dart';
import 'package:no1_storage_provider/provider/data_manager.dart';
import 'package:no1_storage_provider/screens/register_screen.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String email = '';

  @override
  void initState() {
    final cacheData = Provider.of<DataManager>(context, listen: false);
    cacheData.readNameCache(key: 'name');
    cacheData.readMailCache(key: 'email');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Color.fromARGB(255, 10, 109, 158),
        actions: [
          Consumer(
            builder: (BuildContext context, value, Widget? child) {
              final cacheData =
                  Provider.of<DataManager>(context, listen: false);
              return IconButton(
                icon: const Icon(Icons.logout_rounded),
                onPressed: () {
                  cacheData.saveCache(key: 'register', value: true);
                  cacheData.deleteCache(key: 'name').whenComplete(() {
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
                child: Consumer<DataManager>(
                  builder: (BuildContext context, value, child) {
                    return Text(
                      'Nama : ${value.name}',
                      style: const TextStyle(fontSize: 25),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Consumer<DataManager>(
                  builder: (context, value, child) {
                    return Text(
                      'Email : ${value.email}',
                      style: const TextStyle(fontSize: 25),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
