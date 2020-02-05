import 'package:flutter/material.dart';
import 'package:splash_screen_flutter/src/pages/splashscreen/splash_screen_widget.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreenWidget());
  }
}
