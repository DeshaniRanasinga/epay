import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sln_e_pay/app/constant/app_colors.dart';
import 'package:sln_e_pay/app/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    Timer( const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),
              (r) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white225,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/splash_img.jpg'),
              const Text('Welcome to SLN E-Pay',
                style: TextStyle(
                  fontSize: 16.0,
                  color: black0,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic
                ),
              )
            ],
          )
      ),
    );
  }
}