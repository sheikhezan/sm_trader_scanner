import 'package:flutter/material.dart';

class GenerateQrcode extends StatefulWidget {
  const GenerateQrcode({Key? key}) : super(key: key);

  @override
  State<GenerateQrcode> createState() => _GenerateQrcodeState();
}

class _GenerateQrcodeState extends State<GenerateQrcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Genrateqrcode"),
        ],
      ),
    );
  }
}
