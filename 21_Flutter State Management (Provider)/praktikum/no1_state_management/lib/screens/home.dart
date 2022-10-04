import 'dart:math';
import 'package:flutter/material.dart';
import 'package:praktikum/models/contact_list.dart';
import 'package:praktikum/models/contact_models.dart';
import 'create_contact.dart';

class HomePage extends StatelessWidget {
  final List<ContactModels> kontak = kontaks;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 0,
      ),
      body: kontak.isEmpty
          ? Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
                Icon(Icons.people_rounded),
                Text(
                  'Your Contact is empty',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ]),
            )
          : ListView.builder(
              itemCount: kontaks.length,
              itemBuilder: (BuildContext context, index) {
                final ContactModels contact = kontaks[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          height: 70,
                          width: 70,
                          margin: const EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
                          child: contact.name!.isNotEmpty
                              ? Center(
                                  child: Text(
                                    contact.name![index].toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              : const Icon(
                                  Icons.person,
                                  size: 30,
                                  color: Colors.white,
                                )),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(
                              height: 17,
                            ),
                            Text(contact.name!,
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                contact.number!,
                                style: const TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
              ),
            ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const CreateContact(),
                ),
              ),
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add_rounded,
            color: Colors.white,
          )),
    );
  }
}
