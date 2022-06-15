import 'package:flutter/material.dart';
import 'package:scratch_app/constants.dart';

class Ex4 extends StatefulWidget {
  const Ex4({Key? key}) : super(key: key);

  @override
  State<Ex4> createState() => _Ex4State();
}

class _Ex4State extends State<Ex4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enouvo - Flutter Training Series'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 4, offset: Offset(2, 1)),
                ],
              ),
              margin: const EdgeInsets.all(20),
              child: Row(
                children: const [
                  Icon(
                    Icons.check_box,
                    color: Colors.red,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  Text('Make a coffee')
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 4, offset: Offset(2, 1)),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/avatar.png',
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: screenW(context) - 130,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Michael Tao',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.logo_dev_rounded,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                        const Text(
                          'Mobile Engineer',
                          style: TextStyle(color: Colors.pink),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          '07-08-1999',
                          style: TextStyle(color: Colors.purple),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    constraints: BoxConstraints.expand(
                      width: screenW(context),
                      height: 220,
                    ),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/moonBackground.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(14),
                          topLeft: Radius.circular(14)),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: ClipOval(
                                      child: Image.asset(
                                        'assets/images/thor.png',
                                        width: 120,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 12),
                                  height: 55,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'THOR',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'MCU-Thor',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              'Thor Odinson, or simply Thor, is a fictional character appearing in American comic books published by Marvel Comics.',
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 250,
                          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Text('Type your message...'),
                        ),
                        const Text(
                          'Reply',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
