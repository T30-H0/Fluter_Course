import 'package:flutter/material.dart';

class Exercise4 extends StatelessWidget {
  const Exercise4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: (Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Vinh Nguyen',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              const Text(
                '1993',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.only(top: 30)),
              ElevatedButton(
                onPressed: () {
                  print('pressed');
                },
                child: const Text('Press Me'),
              )
            ],
          ),
        )));
  }
}
