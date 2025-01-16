import 'package:chatbot/screens/chatbot_screen.dart';
import 'package:chatbot/screens/splash.dart';
import 'package:flutter/material.dart';
 // Import the splash screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatbot App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Set SplashScreen as the home
    );
  }
}