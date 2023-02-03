import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/home/account/aboutus_page.dart';
import 'package:learning_app/home/account/language_select.dart';
import 'package:learning_app/home/account/logout_page.dart';
import 'package:learning_app/home/account/theme_mode.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Setting')),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  "assets/images/dummyuser.png",
                ),
              ),
              title: Text('User Name'),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text('email address'),
              ),
              trailing: Icon(Icons.qr_code),
            ),
            const Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () => lightMode(),
                  child: const Text(
                    'Theme Mode',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const Divider(),
                TextButton(
                  onPressed: () => Language(),
                  child: const Text(
                    'Change Language',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const Divider(),
                TextButton(
                  onPressed: () => Get.to(AboutUs()),
                  child: const Text(
                    'About Us',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const Divider(),
                TextButton(
                  onPressed: () => Get.to(AboutUs()),
                  child: const Text(
                    'Payment Method',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const Divider(),
                TextButton(
                  onPressed: () => logOut(),
                  child: const Text(
                    'Log Out',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
