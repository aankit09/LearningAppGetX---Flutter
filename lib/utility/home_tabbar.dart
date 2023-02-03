import 'package:flutter/material.dart';

class TabBAR extends StatelessWidget {
  const TabBAR({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: 'New Course',),
              Tab(text: 'Old Course',),
              
            ],
          ), // TabBar
          title: const Text('GeeksForGeeks'),
          backgroundColor: Colors.green,
        ), // AppBar
        body: const TabBarView(
          children: [
            Icon(Icons.music_note),
            Icon(Icons.music_video),
            Icon(Icons.camera_alt),
            Icon(Icons.grade),
            Icon(Icons.email),
          ],
        ), // TabBarView
      ), // Scaffold
    ); // DefaultTabControll
  }
}
