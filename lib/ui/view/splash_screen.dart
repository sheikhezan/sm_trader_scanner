import 'package:flutter/material.dart';
import 'dart:async';

import '../../utils/images.dart'; //


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Start a timer that navigates to the next screen after 3 seconds
    Timer(Duration(seconds: 3), () {
      // Navigate to the next screen (replace '/home' with your desired route)
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF195A94).withOpacity(0.20),
      body: Center(
        child: Image.asset(
          DummyImg.logo,
          width: 200, // Set the width of the logo
          height: 200, // Set the height of the logo
        ),
      ),
    );
  }
}
