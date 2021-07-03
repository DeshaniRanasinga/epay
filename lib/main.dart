import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/splash/splash_screen.dart';

void main() {
  runApp(Epay());
}

class Epay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e pay',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const SplashScreen(),
    );
  }
}


