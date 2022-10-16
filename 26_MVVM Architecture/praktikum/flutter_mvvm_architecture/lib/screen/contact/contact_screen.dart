import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture/screen/contact/contact_view_model.dart';
import 'package:flutter_mvvm_architecture/screen/contact/create_contact_screen.dart';
import 'package:flutter_mvvm_architecture/screen/contact/widget/contact_list_card.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        elevation: 0,
      ),
      body: buildContactPage(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final modelView =
              Provider.of<ContactViewModel>(context, listen: false);
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateContactPage(
                  onCreate: (contacts) {
                    modelView.addContact(contacts);
                    Navigator.pop(context);
                  },
                ),
              ));
        },
      ),
    );
  }

  Widget buildContactPage() {
    return Consumer<ContactViewModel>(builder: (context, modelView, child) {
      if (modelView.name.isNotEmpty) {
        return ContactListCard(
          viewModel: modelView,
        );
      } else {
        return Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
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
