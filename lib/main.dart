import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliver_app/screens/home/view/kids_game2.dart';
import 'package:sliver_app/screens/home/view/Kids_game.dart';
import 'package:sliver_app/screens/home/view/sliver_screen1.dart';
import 'package:sliver_app/screens/home/view/sliver_screen2.dart';
import 'package:sliver_app/screens/home/view/sliver_Screen3.dart';

import 'screens/home/view/DataTable.dart';
import 'screens/home/view/anim/view/animation_Screen.dart';
import 'screens/home/view/anim/view/animation_Screen2.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'anim',
      routes: {
        '/': (p0) => HomeScreen(),
        'second': (p0) => SecondScreen(),
        'third': (p0) => ThirdScreen(),
        'Forth': (p0) => ForthScreen(),
        'Fifth': (p0) => Home(),
        'sixth':(p0) =>DataScreen(),
        'anim':(p0) => AnimScreen(),
        'Anim':(p0) => MyCustomWidget()
      },
    ),
  );
}
