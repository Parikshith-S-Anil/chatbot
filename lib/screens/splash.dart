import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';
import 'onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/bot.json',
                width: 300, // Set width and height to avoid overflow
                height: 300,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 20), // Add spacing between widgets
              Text(
                "VEGA",
                style: TextStyle(
                  color: Color(0xFF2D72CB),
                  fontSize: 60,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Orbitronb',
                ),
              ),
              SizedBox(height: 10), // Add space after the title
              Text(
                'Created by Main Project Group 9',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontFamily: 'Quantico',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
