import 'dart:async';

import 'package:flutter/material.dart';
import 'package:parambikulam/homepage.dart';
import 'package:parambikulam/login.dart';

import '../prefManager/prefmanager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/loginimg.png',
            height: 730, // Replace with your image path
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  Future<void> fetch() async {
    var token = await PrefManager.getToken();
    if (token != null) {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage())));
    } else {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Loginpage())));
    }
  }
}
