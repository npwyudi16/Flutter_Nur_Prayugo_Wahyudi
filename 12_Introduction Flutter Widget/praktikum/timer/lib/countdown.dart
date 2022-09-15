import 'dart:async';
import 'package:flutter/material.dart';

class CountdownTime extends StatefulWidget {
  const CountdownTime({Key? key}) : super(key: key);

  @override
  State<CountdownTime> createState() => _CountdownTimeState();
}

class _CountdownTimeState extends State<CountdownTime> {
  Timer? _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "00 : 00 :$_start",
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                startTimer();
              },
              child: const Text("Klik dulu untuk menjalankan Timer"),
            ),
          ],
        ),
      ),
    );
  }
}
