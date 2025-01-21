import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/saplash_screen.dart';
import 'package:topics/theme.dart';
import 'package:topics/view/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // title: StringTopic.appName,
      debugShowCheckedModeBanner: false,
      theme: theme(context),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const SaplashScreen()),
        GetPage(name: '/home', page: () => const HomeView()),
      ],
    );
  }
}
