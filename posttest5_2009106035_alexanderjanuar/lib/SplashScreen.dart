import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:posttest5_2009106035_alexanderjanuar/LandingPage.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('asset/Logo.png',width: 400,),
      title: const Text(
        "CodeLink",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFFFB72B),
        ),
      ),
      backgroundColor: Colors.white,
      loadingText: Text("CodeLink - Learning By Doing"),
      navigator: LandingPage(),
      durationInSeconds: 5,
    );
  }
}