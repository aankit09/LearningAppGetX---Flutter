import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/auth/signup_page.dart';
import 'package:learning_app/home/home/home_page.dart';

import '../home/dashboard_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Image.asset(
          //   'assets/images/books.jpg',
          //   height: 150,
          //   width: 250,
          // ),
          Text(
            'AppTitle'.tr,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              onChanged: (String usr) {},
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Username'.tr,
                prefixIcon: const Icon(
                  Icons.account_box,
                  size: 30.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              onChanged: (String pasw) {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Password'.tr,
                prefixIcon: Icon(
                  Icons.lock,
                  size: 30.0,
                ),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 40.0),
          GestureDetector(
            onTap: () {
              Get.to(BottomNavigation());
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 60.0),
              alignment: Alignment.center,
              height: 45.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'LOGIN'.tr,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Dont have account? Create it'.tr),
              TextButton(
                child:  Text(
                  'Sign Up'.tr,
                  style: TextStyle(fontSize: 14),
                ),
                onPressed: () {
                  Get.to(Signup());
                  //signup screen
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
