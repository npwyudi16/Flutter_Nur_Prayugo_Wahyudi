import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'About Us',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'Our Services',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                height: 450,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: 180,
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  child: Column(
                    children: <Widget>[
                      Image.network(
                          fit: BoxFit.contain,
                          'https://media.istockphoto.com/photos/technician-repairing-laptop-computer-closeup-picture-id928791064?k=20&m=928791064&s=612x612&w=0&h=kUJKD63SjYWqewwjCAEQhYDNqeYu0GuL5fHw2TNrjy8='),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Hardware',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Layanan reparasi perbaikan ataupun service Komputer (PC) panggilan ke rumah atau kantor Anda di Kota Semarang untuk membantu Anda mengatasi berbagai kerusakan Komputer (PC). Tenaga teknisi kami sudah profesional dan handal, Siap datang ke rumah atau kantor Anda untuk membantu menyelesaikan masalah dari berbagai kerusakan.',
                          maxLines: 22,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                height: 450,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: 180,
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  child: Column(
                    children: <Widget>[
                      Image.network(
                          fit: BoxFit.contain,
                          'https://media.istockphoto.com/photos/technicians-using-laptop-while-analyzing-server-in-server-room-picture-id992574526?k=20&m=992574526&s=612x612&w=0&h=wkOE_J7eZmFkuX0I4evIH7SRNJ3lQJU6PmraHv32eUY='),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Software',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Layanan reparasi perbaikan ataupun service Komputer (PC) panggilan ke rumah atau kantor Anda di Kota Semarang untuk membantu Anda mengatasi berbagai kerusakan Komputer (PC). Tenaga teknisi kami sudah profesional dan handal, Siap datang ke rumah atau kantor Anda untuk membantu menyelesaikan masalah dari berbagai kerusakan.',
                          textAlign: TextAlign.center,
                          maxLines: 22,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
