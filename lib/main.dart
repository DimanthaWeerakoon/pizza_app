import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_app/screens/authentication/login.dart';
import 'package:pizza_app/screens/authentication/signup.dart';
import 'package:pizza_app/shop/shop_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: LoginScreen()),
    );
  }
}
