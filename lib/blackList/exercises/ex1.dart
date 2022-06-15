import 'package:flutter/material.dart';

import '../../constants.dart';

class Ex1 extends StatefulWidget {
  const Ex1({Key? key}) : super(key: key);

  @override
  State<Ex1> createState() => _Ex1State();
}

class _Ex1State extends State<Ex1> {
  var keyboards = [
    {'label': 'C', 'value': 'deleteAll', 'type': 'action'},
    {'label': '<', 'value': 'delete', 'type': 'action'},
    {'label': '%', 'value': 'percent', 'type': 'action'},
    {'label': '%', 'value': 'division', 'type': 'math'},
    {'label': '7', 'value': '7', 'type': 'num'},
    {'label': '8', 'value': '8', 'type': 'num'},
    {'label': '9', 'value': '9', 'type': 'num'},
    {'label': 'x', 'value': 'times', 'type': 'math'},
    {'label': '4', 'value': '4', 'type': 'num'},
    {'label': '5', 'value': '5', 'type': 'num'},
    {'label': '6', 'value': '6', 'type': 'num'},
    {'label': '+', 'value': 'plus', 'type': 'math'},
    {'label': '1', 'value': '1', 'type': 'num'},
    {'label': '2', 'value': '2', 'type': 'num'},
    {'label': '3', 'value': '3', 'type': 'num'},
    {'label': '-', 'value': 'minus', 'type': 'math'},
    {'label': '0', 'value': '0', 'type': 'num'},
    {'label': '.', 'value': 'dot', 'type': 'num'},
    {'label': '=', 'value': 'equal', 'type': 'math'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 1'),
        backgroundColor: Colors.brown,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                width: screenW(context),
                decoration: const BoxDecoration(
                  color: Colors.brown,
                ),
                child: const Text(
                  'Calculator',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                height: 100,
                width: screenW(context),
                margin: const EdgeInsets.only(bottom: 12),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
                child: const Align(
                  alignment: Alignment(1, 0.8),
                  child: Text(
                    '12345679',
                    style: TextStyle(
                      letterSpacing: 0.25,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: keyboards.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1.2 / 1.0,
                    mainAxisSpacing: 14,
                  ),
                  itemBuilder: (context, index) => SizedBox(
                      child: TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                        backgroundColor: keyboards[index]['type'] == 'action'
                            ? Colors.grey
                            : Colors.orange,
                        shape: const CircleBorder(side: BorderSide.none)),
                    child: Text(
                      "${keyboards[index]['label']}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  )),
                ),
              )
            ],
          )),
    );
  }
}
