import 'package:flutter/material.dart';
import 'package:no2_state_management_provider/models/contact_manager.dart';
import '../components/contact_item.dart';

class ContactList extends StatelessWidget {
  final ContactManager manager;
  const ContactList({Key? key, required this.manager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactItemName = manager.namaKontak;
    final contactItemNum = manager.nomorKontak;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemCount: contactItemName.length,
        itemBuilder: (BuildContext context, int index) {
          final item = contactItemNum[index];
          return ContactItem(
            key: Key(item.id!),
            contacts: item,
            onPressed: () {
              manager.deleteContact(index);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${item.namaKontak} Deleted')),
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 12,
          );
        },
      ),
    );
  }
}
