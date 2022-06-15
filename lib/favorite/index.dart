import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:async';

class Snake extends StatefulWidget {
  const Snake({Key? key}) : super(key: key);

  @override
  State<Snake> createState() => _SnakeState();
}

class _SnakeState extends State<Snake> {
  bool isPlaying = false;
  static List<int> snakePo = [45, 65, 85, 105, 125];
  int numberSquare = 200;
  static var randomNum = Random();
  int food = randomNum.nextInt(700);

  void generateNewFood() {
    food = randomNum.nextInt(700);
  }

  void startGame() {
    snakePo = [45, 65, 85, 105, 125];
    const duration = Duration(microseconds: 300);
    Timer.periodic(duration, (Timer time) {
      updateSnake();
    });
  }

  var direction = 'down';
  void updateSnake() {
    setState(() {
      switch (direction) {
        case 'down':
          if (snakePo.last < 480) {
            snakePo.add(snakePo.last + 20 - 200);
          } else {
            snakePo.add(snakePo.last + 20);
          }
          break;
        case 'up':
          if (snakePo.last < 20) {
            snakePo.add(snakePo.last - 20 - 200);
          } else {
            snakePo.add(snakePo.last - 20);
          }
          break;
        case 'left':
          if (snakePo.last % 20 == 0) {
            snakePo.add(snakePo.last - 1 + 20);
          } else {
            snakePo.add(snakePo.last - 1);
          }
          break;
        case 'right':
          if ((snakePo.last + 1) % 20 == 0) {
            snakePo.add(snakePo.last + 1 - 20);
          } else {
            snakePo.add(snakePo.last + 1);
          }
          break;
        default:
      }
      if (snakePo.last == food) {
        generateNewFood();
      } else {
        snakePo.removeAt(0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snake'),
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(8),
                color: Colors.blue,
                child: Container(
                  width: 8,
                  height: 25,
                  decoration: const BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(4), bottom: Radius.circular(12)),
                  ),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 20,
                    ),
                    itemBuilder: (BuildContext context, index) {
                      if (snakePo.contains(index)) {
                        return Center(
                          child: Container(
                            padding: const EdgeInsets.all(1),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(color: Colors.red),
                            ),
                          ),
                        );
                      }
                      if (index == food) {
                        return Container(
                          padding: const EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(color: Colors.pink),
                          ),
                        );
                      } else {
                        return Container(
                          padding: const EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                                // color: Colors.grey,
                                ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Column(
                  children: const [
                    ElevatedButton(
                      onPressed: null,
                      child: Icon(Icons.arrow_upward),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ElevatedButton(
                      onPressed: null,
                      child: Icon(Icons.arrow_back),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Icon(Icons.arrow_downward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
