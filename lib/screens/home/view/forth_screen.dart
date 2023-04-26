import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../modal/itemmodal.dart';

class ForthScreen extends StatefulWidget {
  const ForthScreen({Key? key}) : super(key: key);

  @override
  State<ForthScreen> createState() => _ForthScreenState();
}

class _ForthScreenState extends State<ForthScreen> {
  late List<ItemModal> items;
  late List<ItemModal> items2;
  late int score;
  late bool gameOver;

  @override
  void initState() {
    super.initState();
    initGame();
  }

  var player = AudioCache();

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModal(icon: FontAwesomeIcons.coffee, name: "Coffee", value: "Coffee"),
      ItemModal(icon: FontAwesomeIcons.dog, name: "Dog", value: "Dog"),
      ItemModal(icon: FontAwesomeIcons.cat, name: "Cat", value: "Cat"),
      ItemModal(
          icon: FontAwesomeIcons.birthdayCake, name: "Cake", value: "Cake"),
      ItemModal(icon: FontAwesomeIcons.bus, name: "Bus", value: "Bus"),
    ];
    items2 = List<ItemModal>.from(items);
    items.shuffle();
    items2.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Draggable(
              child: Container(
                height: 100,
                width: 100,
                child: Image(
                  image: AssetImage(
                    "assets/images/1.png",
                  ),
                ),
              ),
              feedback: Center(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image(
                        image: AssetImage(
                          "assets/images/1.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              childWhenDragging: Container(),
              onDragStarted: () {
                Get.snackbar('strat', 'start Draged');
              },
              data: 'red',
            ),
            Spacer(),
            DragTarget(
              builder: (context, candidateData, rejectedData) {
                return Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueGrey.shade300,
                  child: Text(""),
                );
              },
            ),

          ],
        ),
        //     SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Text.rich(
        //         TextSpan(
        //           children: [
        //             TextSpan(text: "Score:"),
        //             TextSpan(
        //                 text: "$score",
        //                 style: TextStyle(
        //                     color: Colors.green,
        //                     fontWeight: FontWeight.bold,
        //                     fontSize: 30.0))
        //           ],
        //         ),
        //       ),
        //       if (gameOver)
        //         Row(
        //           children: <Widget>[
        //             Column(
        //               children: [
        //                 items2.map((item) {
        //                   return Container(
        //                     margin: EdgeInsets.all(8.0),
        //                     child: Draggable<ItemModal>(
        //                       data: item,
        //                       childWhenDragging: Icon(
        //                         item.icon,
        //                         color: Colors.grey,
        //                         size: 50,
        //                       ),
        //                       feedback:
        //                           Icon(item.icon, color: Colors.teal, size: 50),
        //                       child:
        //                           Icon(item.icon, color: Colors.teal, size: 50),
        //                     ),
        //                   );
        //                 }).toList(),
        //               ],
        //             ),
        //             Spacer(),
        //             Column(
        //               children: [
        //                 item.map(
        //                   (item) {
        //                     return DragTarget(
        //                       builder: (context, candidateData, rejectedData) {
        //                         return Container();
        //                       },
        //                       onAccept: (recivedItems) {
        //                         if (item.value == recivedItems!.value) {
        //                           setState(() {
        //                             items.remove(recivedItems);
        //                             items2.remove(item);
        //                             score += 10;
        //                             item.accepting = false;
        //                           });
        //                         } else {
        //                           setState(() {
        //                             score -= 5;
        //                             item.accepting = false;
        //                           });
        //                         }
        //                       },
        //                       onLeave: (receviedItems) {
        //                         setState(() {
        //                           item.accepting = false;
        //                         });
        //                       },
        //                       onWillAccept: (receviedItems) {
        //                         setState(() {
        //                           item.accepting = true;
        //                         });
        //                       },
        //                     );
        //                   },
        //                 ),
        //               ],
        //             ),
        //           ],
        //         )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
