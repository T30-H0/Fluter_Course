import 'package:flutter/material.dart';
import 'package:scratch_app/constants.dart';

class Ex3 extends StatefulWidget {
  const Ex3({Key? key}) : super(key: key);

  @override
  State<Ex3> createState() => _Ex3State();
}

class _Ex3State extends State<Ex3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.flare_sharp, color: Colors.purple),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('GENERALS', style: TextStyle(color: Colors.orange)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding:
            const EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 20),
        color: Colors.blueGrey[50],
        child: Column(
          children: [
            SizedBox(
              width: screenW(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'AVERAGE SALARY',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                      height: 50,
                      width: screenW(context),
                      margin: const EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.green, Colors.blue, Colors.purple],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: const Text(
                        "\$ 1300/per month",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(top: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                            color: Colors.black,
                            width: 3.0,
                          ))),
                          width: (screenW(context) - 80) / 2,
                          child: Column(
                            children: const [
                              Text(
                                'Newest Languages Programming',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Flutter 1.0',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: (screenW(context) - 80) / 2,
                          child: Column(
                            children: const [
                              Text(
                                'Highest Salary',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 40),
                              Text(
                                '2500',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: const [
                        Text(
                          'Most hired job?',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        "Angular JS",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        "React Native",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        "Flutter Senior",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        "Sugar Daddy",
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
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
