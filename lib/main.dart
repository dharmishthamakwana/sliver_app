import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliver_app/screens/home/view/home_Screen.dart';
import 'package:sliver_app/screens/home/view/second_Screen.dart';
import 'package:sliver_app/screens/home/view/third_Screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (p0) => HomeScreen(),
        'second': (p0) => SecondScreen(),
        'third': (p0) => ThirdScreen(),

      },
    ),
  );
}
