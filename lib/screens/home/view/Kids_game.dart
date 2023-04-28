import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import '../modal/itemmodal.dart';

class ForthScreen extends StatefulWidget {
  const ForthScreen({Key? key}) : super(key: key);

  @override
  State<ForthScreen> createState() => _ForthScreenState();
}

class _ForthScreenState extends State<ForthScreen> {
  Homecontroller homecontroller = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pink.shade200, title: Text("Kids Game")),
        body: Stack(
          children: [
            Obx(
              () => Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 650,
                        width: 150,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: Draggable(
                                data: homecontroller.qalist[index].key,
                                child: Container(
                                  height: 80,
                                  width: 100,
                                  child: Text(
                                    "${homecontroller.qalist[index].image}",
                                    style: TextStyle(
                                      fontSize: 70,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  height: 120,
                                  width: 120,
                                  child: Text(
                                    "${homecontroller.qalist[index].image}",
                                    style: TextStyle(
                                        fontSize: 80,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                                onDragCompleted: () {
                                  print(homecontroller.qalist[index].image);
                                  Container();

                                  homecontroller.qalist[index].ondrop = true;
                                },
                              ),
                            );
                          },
                          itemCount: homecontroller.qalist.length,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 650,
                        width: 130,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DragTarget(
                                builder:
                                    (context, candidateData, rejectedData) {
                                  return Container(
                                    color: homecontroller.anlist[index].color,
                                    alignment: Alignment.center,
                                    height: 80,
                                    width: 200,
                                  );
                                },
                                onWillAccept: (data) {
                                  return data ==
                                      homecontroller.anlist[index].key;
                                },
                                onAccept: (data) {
                                  homecontroller.anlist[index] = Homemodel(
                                      image: homecontroller.qalist[index].image,
                                      key: homecontroller.anlist[index].key,
                                      ondrop: true);
                                  // homecontroller.anlist.removeAt(
                                  //     homecontroller.qalist[index].index!);
                                },
                              ),
                            );
                          },
                          itemCount: homecontroller.anlist.length,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
