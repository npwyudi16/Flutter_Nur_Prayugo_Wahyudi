import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly3/src/model/data_user_model.dart';
import 'package:weekly3/src/utils/constant.dart';
import 'package:weekly3/src/view/home/widgets/about_us_section.dart';
import 'package:weekly3/src/view/home/widgets/end_drawer.dart';
import 'package:weekly3/src/view/home/widgets/welcome_section.dart';
import 'package:weekly3/src/view/user/user_view.dart';
import 'package:weekly3/src/view_model/user_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GlobalKey<FormState> _form;
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  void initState() {
    _form = GlobalKey();
    super.initState();
  }

  @override
  void dispose() {
    fnameController.dispose();
    lnameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Service Center Computer'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            child: Image.asset('assets/digital_services.png'),
          ),
        ),
        elevation: 0,
      ),
      endDrawer: const EndDrawer(),
      body: SingleChildScrollView(
        child: Form(
          key: _form,
          child: ListBody(children: <Widget>[
            const Welcome(),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Computer repair is the process of identifying, troubleshooting and resolving problems and issues in a faulty computer broad field encompassing many tools, techniques and procedures used to repair computer hardware, software or network/Internet problems.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Contact Us',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text('For all enquires, please email us using form below',
                  textAlign: TextAlign.start, style: MyStyle.myTextStyle),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text('First Name *',
                      textAlign: TextAlign.start, style: MyStyle.myTextStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text('Last Name',
                      textAlign: TextAlign.start, style: MyStyle.myTextStyle),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill your Name !';
                          }
                          return null;
                        },
                        controller: fnameController,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        )),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill your Name !';
                          }
                          return null;
                        },
                        controller: lnameController,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text('Email *',
                  textAlign: TextAlign.start, style: MyStyle.myTextStyle),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill your mail !';
                    }
                    return null;
                  },
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  )),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                'Message *',
                textAlign: TextAlign.start,
                style: MyStyle.myTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This Message cant be empty !';
                    }
                    return null;
                  },
                  controller: messageController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  )),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                  left: 12, right: 250, bottom: 0, top: 0),
              child: ElevatedButton.icon(
                onPressed: () {
                  if (_form.currentState!.validate()) {
                    _form.currentState!.save();
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Apakah data ini sudah benar ?'),
                        content: SizedBox(
                          height: 100,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Name : ${fnameController.text} ${lnameController.text} ',
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Email : ${emailController.text}',
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Message : ${messageController.text}',
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('Belum')),
                                  TextButton(
                                    onPressed: () {
                                      final form = DataUserModel(
                                          firstName: fnameController.text,
                                          lastName: lnameController.text,
                                          email: emailController.text,
                                          message: messageController.text);
                                      Provider.of<UserViewModel>(context,
                                              listen: false)
                                          .addUser(form);
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const DataUser()));
                                    },
                                    child: const Text('Sudah'),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.send_sharp),
                label: Text(
                  'Send',
                  style: MyStyle.myTextStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const AboutUs(),
          ]),
        ),
      ),
    );
  }
}
