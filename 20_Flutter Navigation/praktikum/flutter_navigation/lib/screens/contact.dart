import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/screens/create_contact.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (BuildContext context, index) {
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
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)]),
                    child: name.isNotEmpty
                        ? Center(
                            child: Text(
                              '${name[index]}'.toUpperCase(),
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
                      Text('${name[index]}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          '${number[index]}',
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
