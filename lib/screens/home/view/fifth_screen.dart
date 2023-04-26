import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Map<String, bool> score = {};
  final Map<String, Color> choice = {
    '🍎': Colors.red,
    '🥭': Colors.orange,
    '🥑': Colors.green,
    '🍒': Colors.pink.shade300,
    '🍇': Colors.purple,
    '🥥': Colors.brown,
    '🍌': Colors.yellow,
  };
  int index = 0;
  var play = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Kids Game",),backgroundColor: Colors.pink.shade200),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: choice.keys.map(
                (element) {
                  return Draggable<String>(
                    data: element,
                    child: Text(
                      element,
                      style: TextStyle(fontSize: 60),
                    ),
                    feedback: Movable(element),
                    childWhenDragging: Text(
                      '🐰',
                      style: TextStyle(fontSize: 50),
                    ),
                    onDragStarted: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Start drag",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        backgroundColor: Colors.black38,
                      ));
                    },
                  );
                },
              ).toList(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: choice.keys.map((element) {
                return buildTarget(element);
              }).toList()
                ..shuffle(Random(index)),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink.shade200,
            onPressed: () {
              setState(() {
                score.clear();
                index++;
              });
            },
            child: Icon(Icons.refresh)),
      ),
    );
  }

  Widget buildTarget(emoji) {
    return DragTarget(
      builder: (context, candidateData, rejectedData) {
        if (score[emoji] == true) {
          return Container(
            color: Colors.white,
            child: Text('Congratulations !'),
            alignment: Alignment.center,
            height: 80,
            width: 200,
          );
        } else {
          return Container(
            color: choice[emoji],
            height: 80,
            width: 200,
          );
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(
          () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Dropped successfully!',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                backgroundColor: Colors.black38,
              ),
            );
            score[emoji] = true;
          },
        );
      },
      onLeave: (data) {

      },
    );
  }
}

class Movable extends StatelessWidget {
  Movable(this.emoji);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
          alignment: Alignment.center,
          height: 50,
          padding: EdgeInsets.all(15),
          child: Text(
            emoji,
            style: TextStyle(color: Colors.black, fontSize: 60),
          )),
    );
  }
}
