import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Views/LoginPage.dart';


void main() async {

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginPage(),
    );
  }
}





