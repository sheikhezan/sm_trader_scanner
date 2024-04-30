import 'package:flutter/material.dart';
import 'package:flutter_qr_sanner/ui/view/scanner_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/images.dart';
import '../controller/sanner_controller.dart';
import 'generate_qrcode.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScannerController _controller = Get.put(ScannerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF195A94),
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text("SM Scanner", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.white))),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(DummyImg.logo),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ScannerScreen(),));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Scan QR / Bar Code',
                  style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                ),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white  , backgroundColor: Color(0xFF195A94),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 24,),
            ElevatedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => GenerateQrcode(),));},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Generate QR-Code',
                  style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                ),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white  , backgroundColor: Color(0xFF195A94),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 24),

            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Icon(
                  Icons.qr_code_sharp,
                  size: 200,
                  color: Color(0xFF195A94),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
