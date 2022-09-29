import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_form_picker/screen/preview_post.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({
    Key? key,
  }) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  FilePickerResult? result;
  String? fileName;
  PlatformFile? pickedFile;
  File? file;

  DateTime dueDate = DateTime.now();
  Color pickerColor = Colors.indigo;
  Color currentColor = Colors.blue;

  TextEditingController dateController = TextEditingController();
  TextEditingController captionController = TextEditingController(text: '');
  TextEditingController colorController = TextEditingController();

  void ambilFile() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.any,
    );

    if (result != null) {
      fileName = result.files.first.name;
      pickedFile = result.files.first;
      file = File(pickedFile!.path.toString());

      print('Filename $fileName');
      setState(() {
        fileName = result.files.first.name;
        file = File(pickedFile!.path.toString());
      });
    }
    OpenFile.open(file.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create Post'),
          elevation: 0,
        ),
        drawer: Drawer(
          elevation: 0,
          child: ListView(padding: const EdgeInsets.only(top: 25), children: [
            ListTile(
              leading: const Icon(Icons.post_add),
              title: const Text('Create New Post'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const ListTile(
              leading: Icon(Icons.preview_sharp),
              title: Text('Preview Post'),
            )
          ]),
        ),
        body: ListView(padding: const EdgeInsets.all(15), children: <Widget>[
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Text(
                        'Cover',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                if (pickedFile != null)
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Expanded(
                      child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxHeight: 220,
                          ),
                          child: Image.file(file!)),
                    ),
                  ]),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          ambilFile();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                        ),
                        child: const Text('Pilih File'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Text(
                      'Publish at',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                readOnly: true,
                controller: dateController,
                decoration: InputDecoration(
                    hintText: 'Pilih Tanggal',
                    prefixIcon: const Icon(Icons.calendar_month_sharp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26))),
                onTap: () async {
                  FocusScope.of(context).requestFocus(FocusNode());
                  final pilihTanggal = await showDatePicker(
                      context: context,
                      initialDate: dueDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2023));

                  setState(() {
                    var hasil =
                        DateFormat('dd MMMM yyyy').format(pilihTanggal!);
                    dateController.text = hasil.toString();
                  });
                },
              )
            ],
          )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Text(
                        'Color Theme',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  readOnly: true,
                  controller: colorController,
                  decoration: InputDecoration(
                      hintText: 'Pilih Warna',
                      prefixIcon: const Icon(Icons.color_lens_sharp),
                      suffix: Container(
                        height: 20,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: pickerColor),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26))),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Silahkan Pilih Warna'),
                            content: SingleChildScrollView(
                              child: ColorPicker(
                                pickerColor: pickerColor,
                                onColorChanged: (Color newHex) {
                                  pickerColor = newHex;
                                  setState(() {
                                    pickerColor = newHex;
                                  });
                                },
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                child: const Text('Pick'),
                                onPressed: () {
                                  setState(() => currentColor = pickerColor);
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Text(
                      'Caption',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextFormField(
                  controller: captionController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PreviewPost(
                                  selectedFile: file!,
                                  pickerColor: pickerColor,
                                  selectedDate: dateController.text,
                                  caption: captionController.text,
                                )));
                  },
                  child: const Text('Simpan'))
            ]),
          ),
        ]));
  }
}
