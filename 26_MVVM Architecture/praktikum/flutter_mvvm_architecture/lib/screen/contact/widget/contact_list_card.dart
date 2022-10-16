import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture/screen/contact/contact_view_model.dart';
import 'package:flutter_mvvm_architecture/screen/contact/widget/contact_card.dart';

class ContactListCard extends StatelessWidget {
  final ContactViewModel viewModel;
  const ContactListCard({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactItemName = viewModel.name;
    final contactItemNum = viewModel.phone;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemCount: contactItemName.length,
        itemBuilder: (BuildContext context, int index) {
          final item = contactItemNum[index];
          return ContactCard(
            key: Key(item.id),
            contacts: item,
            onPressed: () {
              viewModel.deleteContact(index);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${item.name} Deleted')),
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
