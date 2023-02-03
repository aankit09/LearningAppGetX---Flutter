import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:learning_app/splash/splash_screen.dart';
import 'package:learning_app/utility/language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning App',
      translations: Languages(),
      locale: Locale('en' , 'us'),
      fallbackLocale: Locale('en' , 'US'),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      getPages: [
        GetPage(
          name: "/",
          page: () => const SplashScreen(),
        ),
        
      ],
    );
  }
}
