import 'package:flutter/material.dart';
import 'package:get/get.dart';

void logOut() {
  Get.defaultDialog(
    title: "Logout",
    content: Text('Do you want Logout your account?'),
    textCancel: "No",
    textConfirm: "Yes",
    cancelTextColor: Colors.black,
    confirmTextColor: Colors.black
    
  );
}
