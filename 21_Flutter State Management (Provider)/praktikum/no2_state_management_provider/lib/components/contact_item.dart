import 'dart:math';
import 'package:flutter/material.dart';
import '../models/contact_model.dart';

class ContactItem extends StatelessWidget {
  final ContactModel contacts;
  final Function() onPressed;
  const ContactItem({Key? key, required this.contacts, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
              child: contacts.namaKontak!.isNotEmpty
                  ? Center(
                      child: Text(
                        contacts.namaKontak!.toUpperCase(),
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
          Container(
            margin: const EdgeInsets.only(right: 85, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 7,
                ),
                Text(contacts.namaKontak!,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    contacts.nomorKontak!,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   height: 150,
          // ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text('Ingin menghapusnya ?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Tidak'),
                    ),
                    TextButton(
                      onPressed: onPressed,
                      child: const Text('Ya'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.delete_forever_rounded),
          ),
        ],
      ),
    );
  }
}
