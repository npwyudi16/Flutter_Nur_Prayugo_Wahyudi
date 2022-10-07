import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_animation/bloc/contact_bloc.dart';
import 'package:flutter_animation/screens/create_contact.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool memBesar = false;
  @override
  Widget build(BuildContext context) {
    final contactBloc = BlocProvider.of<ContactBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocBuilder<ContactBloc, ContactState>(
          bloc: contactBloc,
          builder: (context, state) {
            if (state is ContactLoading) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                  ],
                ),
              );
            } else if (state is ContactFailed) {
              return const Text('Sorry this is failure');
            } else if (state.contact.isEmpty) {
              return Center(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          memBesar = !memBesar;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 350),
                        width: memBesar ? 300 : 30,
                        height: memBesar ? 300 : 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.indigo,
                        ),

                        // child: Column(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: const [
                        //       Icon(
                        //         Icons.people_rounded,
                        //         size: 40,
                        //       ),
                        //       Text(
                        //         'Your Contact is empty',
                        //         style: TextStyle(
                        //             fontSize: 16, fontWeight: FontWeight.bold),
                        //       ),
                        //     ]),
                      )));
            }
            return Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.separated(
                itemCount: state.contact.length,
                itemBuilder: (BuildContext context, int index) {
                  final contact = state.contact[index];
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
                                color: Colors.primaries[
                                    Random().nextInt(Colors.primaries.length)]),
                            child: contact.nama.isNotEmpty
                                ? Center(
                                    child: Text(
                                      contact.nama.toUpperCase(),
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
                              Text(contact.nama,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19)),
                              const SizedBox(
                                height: 7,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  contact.nomor,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                content: const Text('Are you sure ?'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('No'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      context
                                          .read<ContactBloc>()
                                          .add(DeleteContact(contact: contact));
                                    },
                                    child: const Text('Yes'),
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
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 12,
                  );
                },
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const CreateContact(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(0.0, 5.0);
                  const end = Offset.zero;
                  const curve = Curves.ease;

                  final tween = Tween(begin: begin, end: end);
                  final curvedAnimation = CurvedAnimation(
                    parent: animation,
                    curve: curve,
                  );

                  return SlideTransition(
                    position: tween.animate(curvedAnimation),
                    child: child,
                  );
                },
              ));
        },
      ),
    );
  }
}
