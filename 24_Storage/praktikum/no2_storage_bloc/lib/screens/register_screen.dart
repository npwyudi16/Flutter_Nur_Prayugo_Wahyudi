import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:no2_storage_bloc/cubit/data_cubit.dart';
import 'package:no2_storage_bloc/screens/home_screen.dart';
import 'package:no2_storage_bloc/shared_preferences/cache_manager.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late GlobalKey<FormState> keyForm;
  final nameregController = TextEditingController();
  final emailregController = TextEditingController();
  final numregController = TextEditingController();
  final passregController = TextEditingController();
  bool _passVisibility = true;

  @override
  void dispose() {
    nameregController.dispose();
    emailregController.dispose();
    numregController.dispose();
    passregController.dispose();
    super.dispose();
  }

  void initialReg() async {
    final isLogin = await CacheHelper().getData(key: 'register') ?? true;
    if (mounted) {
    } else if (isLogin) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
          ((route) => false));
    }
  }

  @override
  void initState() {
    initialReg();
    keyForm = GlobalKey();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1664110320562-1858ec498640?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDg3fENEd3V3WEpBYkV3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: SizedBox(
            //color: Colors.white,
            height: 700,
            width: 350,
            child: Form(
              key: keyForm,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 90,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Register Page',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Input your Name first !';
                        }
                        return null;
                      },
                      controller: nameregController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Nama'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Input your Email first !';
                        }
                        return null;
                      },
                      controller: emailregController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          prefixIcon: Icon(Icons.mail),
                          labelText: 'Email'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Input your Number first !';
                        }
                        return null;
                      },
                      controller: numregController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          prefixIcon: Icon(Icons.contact_phone_sharp),
                          labelText: 'Nomor Telepon'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Input your Password first !';
                        }
                        return null;
                      },
                      obscureText: _passVisibility,
                      controller: passregController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passVisibility
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: _passVisibility ? Colors.grey : Colors.blue,
                          ),
                          onPressed: () {
                            setState(() {
                              _passVisibility = !_passVisibility;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      child: BlocBuilder<DataCubit, DataState>(
                        builder: (context, state) {
                          return ElevatedButton(
                              child: const Text(
                                'Register',
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                if (keyForm.currentState!.validate()) {
                                  CacheHelper.saveData(
                                      key: 'register', value: false);
                                  CacheHelper.writeData(
                                    key: 'name',
                                    value: nameregController.text,
                                  );
                                  CacheHelper.writeData(
                                      key: 'email',
                                      value: emailregController.text);

                                  Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ));
                                }
                              });
                        },
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
