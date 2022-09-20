import 'package:flutter/material.dart';

class LisViu extends StatelessWidget {
  const LisViu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON ListView in Flutter'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: ExactAssetImage('assets/boy.png')),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 17,
                      ),
                      const Text('Hendri',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: const Text(
                          'Gass nongki ??',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: ExactAssetImage('assets/boy1.png')),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 17,
                      ),
                      const Text('Bowo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: const Text(
                          'Gass nongki ??',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: ExactAssetImage('assets/gamer.png')),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 17,
                      ),
                      const Text('Atha',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: const Text(
                          'Gass nongki ??',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: ExactAssetImage('assets/hacker.png')),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 17,
                      ),
                      const Text('Elang',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: const Text(
                          'Gass nongki ??',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: ExactAssetImage('assets/man.png')),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 17,
                      ),
                      const Text('Houki',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: const Text(
                          'Gass nongki ??',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: ExactAssetImage('assets/man1.png')),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 17,
                      ),
                      const Text('Osan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: const Text(
                          'Gass nongki ??',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: ExactAssetImage('assets/woman.png')),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 17,
                      ),
                      const Text('Shafira',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: const Text(
                          'Gass nongki ??',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: ExactAssetImage('assets/boy.png')),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 17,
                      ),
                      const Text('Hamid',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: const Text(
                          'Gass nongki ??',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: ExactAssetImage('assets/boy1.png')),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 17,
                      ),
                      const Text('Luqman',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: const Text(
                          'Gass nongki ??',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
