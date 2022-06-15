import 'package:flutter/material.dart';
import '../constants.dart';
import 'exercises/exercise1.dart';
import 'exercises/exercise2.dart';
import 'exercises/exercise3.dart';
import 'exercises/exercise4.dart';
import 'exercises/exercise5.dart';
import 'exercises/exercise6.dart';
import 'exercises/exercise7.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  void exercise_1() {
    print('vao roi nhe');
  }

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
                  MaterialPageRoute(builder: (context) => const Exercise1()),
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
                  MaterialPageRoute(builder: (context) => const Exercise2()),
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
                  MaterialPageRoute(builder: (context) => const Exercise3()),
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
                  MaterialPageRoute(builder: (context) => const Exercise4()),
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
            OutlinedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Exercise5()),
                ),
              },
              child: const Text('Exercise 5'),
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
                  MaterialPageRoute(builder: (context) => const Exercise6()),
                ),
              },
              child: const Text('Exercise 6'),
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
                  MaterialPageRoute(builder: (context) => const Exercise7()),
                ),
              },
              child: const Text('Exercise 7'),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(screenW(context) - 32, 0),
                padding: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: exercise_1,
              child: const Text('Exercise 8'),
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
      )),
    );
  }
}
