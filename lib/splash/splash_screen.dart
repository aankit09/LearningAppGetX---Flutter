import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/auth/login_page.dart';
import 'package:learning_app/auth/signup_page.dart';
import 'package:learning_app/home/home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Get.off(() => Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Image.asset(
        'assets/images/learn.jpg',
        height: 150,
        width: 150,
      ),
    );
  }
}
