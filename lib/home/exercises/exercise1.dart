import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Text(
        'Enter your name',
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
