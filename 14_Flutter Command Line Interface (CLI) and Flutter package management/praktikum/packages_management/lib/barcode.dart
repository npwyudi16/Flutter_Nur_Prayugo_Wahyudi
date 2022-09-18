import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodePage extends StatelessWidget {
  const BarcodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BarcodeWidget(
              data: 'Altera Academy',
              barcode: Barcode.aztec(),
              width: 500,
              height: 100,
            ),
            const SizedBox(
              height: 90,
            ),
            BarcodeWidget(
              data: 'Flutter Asik',
              barcode: Barcode.aztec(),
              width: 500,
              height: 100,
            ),
            const SizedBox(
              height: 90,
            ),
            BarcodeWidget(
              data: 'Nur Prayugo Wahyudi',
              barcode: Barcode.aztec(),
              width: 500,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
