import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/auth/login_page.dart';
import 'package:learning_app/controller/login_controller.dart';

import '../controller/auth_service.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: CircleAvatar(
                radius: 80.0,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
                backgroundColor: Colors.transparent,
              )),
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
              decoration:  InputDecoration(
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
                hintText: 'Confirm Password'.tr,
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
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 60.0),
              alignment: Alignment.center,
              height: 45.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'Sign Up'.tr,
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
              const Text('Already have account?'),
              TextButton(
                child:  Text(
                  'Log in'.tr,
                  style: TextStyle(fontSize: 14),
                ),
                onPressed: () {
                  Get.to(Login());
                  //signup screen
                },
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  AuthService().signInWithGoogle();
                  // controller.loginWithGoogle;
                  print('clicked');
                  // Provider.of<LoginController>(context, listen: false)
                  //     .googleLogin();
                },
                child: Image.asset(
                  'assets/images/google.jpg',
                  height: 100,
                  width: 180,
                ),
              ),
              // const SizedBox(
              //   width: 10,
              // ),
              // GestureDetector(
              //   onTap: () {},
              //   child: Image.asset(
              //     'assets/images/facebook.png',
              //     height: 100,
              //     width: 180,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
