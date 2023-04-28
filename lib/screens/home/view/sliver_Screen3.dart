import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blueGrey.shade900,
              floating: true,
              title: Text("Sliver ListDelegetApp"),
              collapsedHeight: 150,
              forceElevated: true,
              expandedHeight: 200,
            ),
            SliverList(
              delegate:
              SliverChildListDelegate(
                [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Colors.amber.shade200,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Colors.amber.shade200,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Colors.amber.shade200,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Colors.amber.shade200,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Colors.amber.shade200,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Colors.amber.shade200,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Colors.amber.shade200,
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
