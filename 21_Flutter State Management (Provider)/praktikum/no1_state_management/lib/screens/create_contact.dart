import 'dart:math';
import 'package:flutter/material.dart';
import 'package:praktikum/models/contact_list.dart';
import 'package:praktikum/models/contact_models.dart';
import 'package:praktikum/screens/home.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({Key? key}) : super(key: key);

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  final List<ContactModels> kontak = kontaks;
  late GlobalKey<FormState> _key;
  late TextEditingController nameController;
  TextEditingController numberController = TextEditingController();

  late String _name = '';

  @override
  void initState() {
    super.initState();
    _key = GlobalKey();
    nameController = TextEditingController(text: _name);
  }

  addContactToList() {
    setState(() {
      kontak.add(ContactModels(name: nameController.text, number: numberController.text));
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
                if (_key.currentState!.validate()) {
                  addContactToList();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                      (Route<dynamic> route) => false);
                }
              },
              icon: const Icon(Icons.done))
        ],
      ),
      body: Form(
        key: _key,
        child: ListView(padding: const EdgeInsets.all(12), children: [
          Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
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
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon isi dulu gaes';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon isi dulu gaes';
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: 'Nomor Telepon',
                    prefixIcon: const Icon(Icons.call)),
                controller: numberController,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      addContactToList();
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                          (Route<dynamic> route) => false);
                    }
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          ),
        ]),
      ),
    );
  }
}
