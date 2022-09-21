import 'package:flutter/material.dart';

class ImageThree extends StatelessWidget {
  const ImageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Three')),
      body: Image.network(
          'https://c1.wallpaperflare.com/preview/687/678/334/nature-animal-world-fawn-single.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center),
    );
  }
}
