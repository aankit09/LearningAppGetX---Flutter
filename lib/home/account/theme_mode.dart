import 'package:flutter/material.dart';
import 'package:get/get.dart';

void  lightMode() {
  Get.bottomSheet(
    Container(
      height: 130,
      decoration: const BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.light_mode),
            title: const Text(
              'Light Mode Theme',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Get.changeTheme(ThemeData.light());
            },
          ),
          const Divider(
            thickness: 2,
            color: Colors.white,
          ),
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text('Dark Mode Theme',
                style: TextStyle(color: Colors.black)),
            onTap: () {
              Get.changeTheme(ThemeData.dark());
            },
          )
        ],
      ),
    ),
  );
}
