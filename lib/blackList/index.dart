import 'package:flutter/material.dart';
import 'package:scratch_app/blackList/exercises/ex1.dart';
import 'package:scratch_app/blackList/exercises/ex2.dart';
import 'package:scratch_app/blackList/exercises/ex3.dart';
import 'package:scratch_app/blackList/exercises/ex4.dart';
import 'package:scratch_app/constants.dart';

class BlackList extends StatelessWidget {
  const BlackList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ex1()),
              ),
            },
            child: const Text('Exercise 1'),
            style: OutlinedButton.styleFrom(
              minimumSize: Size(screenW(context) - 32, 0),
              padding: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ex2()),
              ),
            },
            child: const Text('Exercise 2'),
            style: OutlinedButton.styleFrom(
              minimumSize: Size(screenW(context) - 32, 0),
              padding: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ex3()),
              ),
            },
            child: const Text('Exercise 3'),
            style: OutlinedButton.styleFrom(
              minimumSize: Size(screenW(context) - 32, 0),
              padding: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ex4()),
              ),
            },
            child: const Text('Exercise 4'),
            style: OutlinedButton.styleFrom(
              minimumSize: Size(screenW(context) - 32, 0),
              padding: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
