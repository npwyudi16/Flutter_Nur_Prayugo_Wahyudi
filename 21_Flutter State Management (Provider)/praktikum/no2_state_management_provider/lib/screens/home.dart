import 'package:flutter/material.dart';
import 'package:no2_state_management_provider/models/contact_manager.dart';
import 'package:no2_state_management_provider/screens/contact_list_screen.dart';
import 'package:no2_state_management_provider/screens/create_contact.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        elevation: 0,
      ),
      body: buildContactPage(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final managerContact = Provider.of<ContactManager>(context, listen: false);
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateContact(
                  onCreate: (contactModel) {
                    managerContact.addContact(contactModel);
                    Navigator.pop(context);
                  },
                ),
              ));
        },
      ),
    );
  }

  Widget buildContactPage() {
    return Consumer<ContactManager>(builder: (context, manager, child) {
      if (manager.namaKontak.isNotEmpty) {
        return ContactList(
          manager: manager,
        );
      } else {
        return Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Icon(
              Icons.people_rounded,
              size: 40,
            ),
            Text(
              'Your Contact is empty',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ]),
        );
      }
    });
  }
}
