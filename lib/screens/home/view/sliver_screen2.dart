import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.teal.shade900,
              floating: true,
              title: Text("Sliver GridApp"),
              actions: [
                IconButton(
                  onPressed: () {
                    Get.toNamed('third');
                  },
                  icon: Icon(
                    Icons.arrow_forward,size: 30,
                  ),
                ),
              ],
              collapsedHeight: 150,
              forceElevated: true,
              expandedHeight: 200,
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  width: 100,
                  height: 100,
                  color: Colors.teal,
                  margin: EdgeInsets.all(10),
                ),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
