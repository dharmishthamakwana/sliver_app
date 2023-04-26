import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blue.shade900,
              floating: true,
              title: Text("Sliver App"),
              actions: [
                IconButton(
                  onPressed: () {
                    Get.toNamed('second');
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                ),
              ],
              collapsedHeight: 150,
              forceElevated: true,
              expandedHeight: 200,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.indigo),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.green,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.cyan,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.teal,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
