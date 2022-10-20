import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://media.istockphoto.com/photos/fixing-phones-camera-picture-id516011492?k=20&m=516011492&s=612x612&w=0&h=hnQk5TQPSc5zf3vmIp72pVD9QLBEyAYXTxcWjOozJEg='),
              fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: const <Widget>[
            SizedBox(
              height: 80,
            ),
            Text(
              'Our Computer Repairation',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
