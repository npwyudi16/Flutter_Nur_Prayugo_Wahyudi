import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_navigation/screens/contact.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({super.key});

  @override
  State<CreateContact> createState() => _CreateContactState();
}

final List name = <dynamic>[
  'Kantor Hokage',
  'Kantor Kazekage',
  'Kantor Mizukage',
  'Kantor Raikage',
  'Kantor Tsucikage'
];
final List number = <dynamic>[
  '+62 808-8000-000',
  '+62 809-9000-000',
  '+62 801-1000-000',
  '+62 802-2000-000',
  '+62 803-3000-000'
];

class _CreateContactState extends State<CreateContact> {
  late TextEditingController nameController;
  TextEditingController numberController = TextEditingController();

  late String _name = '';

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: _name);
  }

  addContactToList() {
    setState(() {
      name.insert(0, nameController.text);
      number.insert(0, numberController.text);
    });
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    numberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Create Contact'),
        actions: [
          IconButton(
              onPressed: () {
                addContactToList();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Contact(),
                ));
              },
              icon: const Icon(Icons.done))
        ],
      ),
      body: ListView(padding: const EdgeInsets.all(12), children: [
        Container(
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
            ),
            child: _name.isNotEmpty
                ? Center(
                    child: Text(
                      _name[0].toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 52,
                      ),
                    ),
                  )
                : const Icon(
                    Icons.camera_alt,
                    size: 30,
                    color: Colors.white,
                  )),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18)),
                  hintText: 'Nama',
                  prefixIcon: const Icon(Icons.person)),
              controller: nameController,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() => _name = value);
                }
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Nomor Telepon',
                  prefixIcon: const Icon(Icons.call)),
              controller: numberController,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  addContactToList();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Contact(),
                  ));
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ]),
    );
  }
}
