// import 'dart:ui';
//
// import 'package:audioplayers/audioplayers.dart';
// import 'package:get/get.dart';
//
// import '../modal/itemmodal.dart';
//
// class Homecontroller extends GetxController {
//   final Map<String, bool> score = {};
//   RxList<ItemModal> choice = <ItemModal>[
//     ItemModal(name: "🍎", value: '1', accepting: false, index: 0),
//     ItemModal(name: "🥭", value: '2', accepting: false, index: 1),
//     ItemModal(name: "🥑", value: '3', accepting: false, index: 2),
//     ItemModal(name: "🍒", value: '4', accepting: false, index: 3),
//     ItemModal(name: "🍇", value: '5', accepting: false, index: 4),
//     ItemModal(name: "🥥", value: '6', accepting: false, index: 5),
//     ItemModal(name: "🍌", value: '7', accepting: false, index: 6),
//   ].obs;
//   RxList<ItemModal> choice1 = <ItemModal>[
//     ItemModal(name: "c", value: '4', accepting: false, index: 3),
//     ItemModal(name: "A", value: '1', accepting: false, index: 0),
//     ItemModal(name: "B", value: '7', accepting: false, index: 6),
//     ItemModal(name: "G", value: '5', accepting: false, index: 4),
//     ItemModal(name: "J", value: '3', accepting: false, index: 2),
//     ItemModal(name: "C", value: '6', accepting: false, index: 5),
//     ItemModal(name: "M", value: '2', accepting: false, index: 1),
//   ].obs;
//
//   int index = 0;
//   var play = AudioCache();
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modal/itemmodal.dart';

class Homecontroller extends GetxController {
  RxInt index = 0.obs;
  RxList<Homemodel> qalist = <Homemodel>[
    Homemodel(image: "🍎", index: 0, key: "black", ondrop: false),
    Homemodel(image: "🥭", index: 1, key: "Butter", ondrop: false),
    Homemodel(image: "🍐", index: 2, key: "cat", ondrop: false),
    Homemodel(image: "🍒", index: 3, key: "ele", ondrop: false),
    Homemodel(image: "🍉", index: 4, key: "fish", ondrop: false),
    Homemodel(image: "🍇", index: 5, key: "horse", ondrop: false),
    Homemodel(image: "🥒", index: 6, key: "parrot", ondrop: false),
  ].obs;
  RxList<Homemodel> anlist = <Homemodel>[
    Homemodel(color: Colors.pink.shade400, index: 3, key: "ele", ondrop: false),
    Homemodel(color: Colors.red, index: 0, key: "black", ondrop: false),
    Homemodel(color: Colors.orange, index: 1, key: "Butter", ondrop: false),
    Homemodel(color: Colors.indigo, index: 5, key: "horse", ondrop: false),
    Homemodel(color: Colors.green.shade900, index: 2, key: "cat", ondrop: false),
    Homemodel(color: Colors.green, index: 6, key: "parrot", ondrop: false),
    Homemodel(color: Colors.redAccent.shade400, index: 4, key: "fish", ondrop: false),

  ].obs;
}
