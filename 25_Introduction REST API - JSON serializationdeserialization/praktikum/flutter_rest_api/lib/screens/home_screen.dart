import 'package:flutter/material.dart';
import 'package:flutter_rest_api/models/reqres_user.dart';
import 'package:flutter_rest_api/models/user.dart';
import 'package:flutter_rest_api/screens/widgets/placeholder.dart';
import 'package:flutter_rest_api/services/service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String req = '';
  UserCreate? userCreate;
  UserUpdate? userUpdate;
  List<UserModel> users = [];
  final ApiService apiService = ApiService();
  final textNameController = TextEditingController();
  final textJobController = TextEditingController();

  @override
  void dispose() {
    textNameController.dispose();
    textJobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1664815045419-af09ae1ffd24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDkxfGlVSXNuVnRqQjBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: textNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Name'),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: textJobController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    prefixIcon: Icon(Icons.cases_sharp),
                    labelText: 'Job'),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text('GET'),
                      onPressed: () async {
                        final user = await apiService.fetchUser();
                        req = 'GET';
                        users = user.toList();
                        setState(() {});
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    ElevatedButton(
                      child: const Text('POST'),
                      onPressed: () async {
                        final userModel = UserCreate(
                          name: textNameController.text,
                          job: textJobController.text,
                        );
                        final user = await apiService.createUser(userModel);
                        userCreate = user;
                        req = 'POST';
                        setState(() {});
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    ElevatedButton(
                      child: const Text('PUT'),
                      onPressed: () async {
                        final userModel = UserUpdate(
                          name: textNameController.text,
                          job: textJobController.text,
                        );
                        final user = await apiService.updateUser(userModel);
                        req = 'PUT';
                        userUpdate = user;
                        setState(() {});
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    ElevatedButton(
                      child: const Text('DELETE'),
                      onPressed: () {
                        apiService.deleteUser();
                        req = 'DELETE';
                        setState(() {});
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Result $req :',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: hasilRequest(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget hasilPost() {
    if (userCreate != null) {
      return PlaceHolderUser(
          name: userCreate!.name,
          job: userCreate!.job,
          dateNow: userCreate!.createdAt!,
          dateTitle: 'Date Time Post');
    }

    return const SizedBox();
  }

  Widget hasilPut() {
    if (userUpdate != null) {
      return PlaceHolderUser(
        name: userUpdate!.name,
        job: userUpdate!.job,
        dateNow: userUpdate!.updatedAt!,
        dateTitle: 'Date Time Update',
      );
    }

    return const SizedBox();
  }

  Widget hasilRequest() {
    switch (req) {
      case 'GET':
        return ListView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, index) {
            final user = users[index];
            return ListTile(
              title: Text('${user.firstName} ${user.lastName}'),
              subtitle: Text(user.email),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.avatar),
              ),
            );
          },
          itemCount: users.length,
        );
      case 'POST':
        return Center(child: hasilPost());
      case 'PUT':
        return Center(child: hasilPut());
      case 'DELETE':
        return const SizedBox();
      default:
        return const SizedBox();
    }
  }
}
