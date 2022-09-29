import 'dart:io';
import 'package:flutter/material.dart';

class PreviewPost extends StatelessWidget {
  final File selectedFile;
  final Color pickerColor;
  final String selectedDate;
  final String caption;

  const PreviewPost({
    Key? key,
    required this.selectedFile,
    required this.pickerColor,
    required this.selectedDate,
    required this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Preview Post'),
        ),
        drawer: const Drawer(),
        body: ListView(padding: const EdgeInsets.all(12), children: <Widget>[
          Column(
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Expanded(
                  child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 220,
                      ),
                      child: Image.file(selectedFile)),
                ),
              ]),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 5),
                child: Row(
                  children: [
                    Text(selectedDate),
                    const Spacer(),
                    const Text('Color : '),
                    Container(
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                        color: pickerColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  caption,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          )
        ]));
  }
}
