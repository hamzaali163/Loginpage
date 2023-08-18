// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loginform/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loginnsreen();
  }

  loginnsreen() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool checklogin = sp.getBool('islogin') ?? false;

    if (checklogin == false) {
      Timer(
        const Duration(seconds: 4),
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
      );
    } else {
      Timer(
        const Duration(seconds: 4),
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('images/logo.png'),
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
