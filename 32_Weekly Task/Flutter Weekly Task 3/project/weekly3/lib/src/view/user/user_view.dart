import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly3/src/view_model/user_view_model.dart';

class DataUser extends StatefulWidget {
  const DataUser({
    super.key,
  });

  @override
  State<DataUser> createState() => _DataUserState();
}

class _DataUserState extends State<DataUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data User'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Consumer<UserViewModel>(
        builder: (context, value, _) {
          final data = value.dataUser;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: ListTile(
                  leading: const Icon(Icons.people_sharp),
                  title: Text(
                      '${data[index].firstName} ${data[index].lastName}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 19)),
                  subtitle: Text(data[index].email),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                          title: const Align(
                              alignment: Alignment.center,
                              child: Text('Detail User')),
                          content: SizedBox(
                            height: 100,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Name : ${data[index].firstName} ${data[index].lastName}',
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Email : ${data[index].email}',
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Message : ${data[index].message}',
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          )));
                },
              );
            },
          );
        },
      ),
    );
  }
}
