import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimScreen extends StatefulWidget {
  const AnimScreen({Key? key}) : super(key: key);

  @override
  State<AnimScreen> createState() => _AnimScreenState();
}

class _AnimScreenState extends State<AnimScreen> {
  bool isCheck = false;
  bool oppacity = false;
  bool shap = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Animation")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AnimatedAlign(
                duration: Duration(seconds: 5),
                alignment:
                    isCheck == false ? Alignment.topLeft : Alignment.topRight,
                child: AnimatedContainer(
                  height: 100,
                  width: 100,
                  duration: Duration(seconds: 2),
                  color: isCheck == false ? Colors.amber : Colors.red,
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isCheck = !isCheck;
                    });
                  },
                  child: Text("container")),
              SizedBox(
                height: 20,
              ),
              AnimatedOpacity(
                opacity: oppacity == false ? 1 : 0,
                child: Container(
                  height: 100,
                  color:
                      oppacity == true ? Colors.amber : Colors.amber.shade400,
                  width: 100,
                ),
                duration: Duration(seconds: 1),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      oppacity = !oppacity;
                    });
                  },
                  child: Text("container")),
              SizedBox(
                height: 20,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 1500),
                height: shap == false ? 50 : 100,
                width: shap == false ? 50 : 100,
                decoration: BoxDecoration(
                  color: shap == false ? Colors.amber : Colors.green,
                  borderRadius: BorderRadius.circular(shap == false ? 0 : 100),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      shap = !shap;
                    });
                  },
                  child: Text("container"))
            ],
          ),
        ),
      ),
    );
  }
}
