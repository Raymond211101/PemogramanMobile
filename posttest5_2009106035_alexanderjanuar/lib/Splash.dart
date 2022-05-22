
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'LandingPage.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 14,
      navigateAfterSeconds: LandingPage(),
      title: Text('CodeLink'),
      image: Image.asset('MobileApp.jpg'),
      backgroundColor: Colors.white,
    );
  }
}
