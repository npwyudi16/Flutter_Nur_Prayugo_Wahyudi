import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:no1_flutter_bloc/bloc/contact_bloc.dart';
import 'package:no1_flutter_bloc/models/contact_model.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({super.key});

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  late GlobalKey<FormState> _key;
  late TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  late String _name = '';

  @override
  void initState() {
    super.initState();
    nameController.addListener(() {
      setState(() {
        _name = nameController.text;
        numberController.text;
      });
    });
    _key = GlobalKey();
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
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Create Contact'),
      ),
      body: Form(
        key: _key,
        child: ListView(padding: const EdgeInsets.all(12), children: [
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon isi dulu gaes';
                  }
                  return null;
                },
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
              BlocBuilder<ContactBloc, ContactState>(
                builder: (context, state) {
                  return ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          final contacts = Contact(
                              name: nameController.text,
                              number: numberController.text);
                          context
                              .read<ContactBloc>()
                              .add(AddContact(contact: contacts));
                          return Navigator.pop(context);
                        }
                      },
                      child: const Text(
                        'Submit',
                        //style: TextStyle(fontSize: 20),
                      ));
                },
              )
            ],
          ),
        ]),
      ),
    );
  }
}
