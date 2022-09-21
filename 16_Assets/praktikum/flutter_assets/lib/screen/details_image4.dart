import 'package:flutter/material.dart';

class ImageFour extends StatelessWidget {
  const ImageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Four')),
      body: Image.network(
          'https://images.unsplash.com/photo-1594616389213-f3c7ce522896?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YW5pbWFsJTIwbG92ZXxlbnwwfHwwfHw%3D&w=1000&q=80',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center),
    );
  }
}
