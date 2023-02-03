import 'package:flutter/material.dart';
import 'package:get/get.dart';

void Language() {
  Row(
    children: [
      OutlinedButton(
        onPressed: () {
          Get.updateLocale(Locale('en', 'US'));
        },
        child: Text('English'),
      ),
      SizedBox(width: 20,),
      OutlinedButton(
        onPressed: () {
          Get.updateLocale(Locale('hi', 'IN'));
        },
        child: Text('हिंदी'),
      ),
    ],
  );
}
