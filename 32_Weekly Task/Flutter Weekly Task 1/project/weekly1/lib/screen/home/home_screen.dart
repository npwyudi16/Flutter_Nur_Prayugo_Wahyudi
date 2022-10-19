import 'package:flutter/material.dart';
import 'package:weekly1/screen/home/widget/welcome_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

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
      body: SingleChildScrollView(
        child: ListBody(children: <Widget>[
          const Welcome(),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Computer repair is the process of identifying, troubleshooting and resolving problems and issues in a faulty computer broad field encompassing many tools, techniques and procedures used to repair computer hardware, software or network/Internet problems.',
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 30,
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
                textAlign: TextAlign.start, style: tekstyle),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text('First Name *',
                    textAlign: TextAlign.start, style: tekstyle),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text('Last Name',
                    textAlign: TextAlign.start, style: tekstyle),
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
            child: Text('Email *', textAlign: TextAlign.start, style: tekstyle),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextFormField(
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
              style: tekstyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextFormField(
                controller: messageController,
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                )),
          ),
          const SizedBox(height: 10),
          Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 270, bottom: 0, top: 0),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Apakah data ini sudah benar ?'),
                    content: SizedBox(
                      height: 70,
                      child: Center(
                        child: Column(
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
                            )
                          ],
                        ),
                      ),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Belum')),
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Sudah'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'Submit',
                style: tekstyle,
              ),
            ),
          )
        ]),
      ),
    );
  }

  var tekstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}
