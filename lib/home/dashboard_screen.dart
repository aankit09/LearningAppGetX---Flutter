import 'package:flutter/material.dart';
import 'package:learning_app/home/account/setting_page.dart';
import 'package:learning_app/home/home/home_page.dart';
import 'package:learning_app/home/qrscan/qrscanner_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const QrScanner(),
    const Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.black,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.qr_code,
                    color: Colors.black,
                    size: 35,
                  )
                : const Icon(
                    Icons.qr_code_2_outlined,
                    color: Colors.grey,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 35,
                  )
                : const Icon(
                    Icons.settings_outlined,
                    color: Colors.grey,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
