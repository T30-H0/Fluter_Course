import 'package:flutter/material.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: (const Center(
          child: Text(
            'Enter your name',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        )));
  }
}
