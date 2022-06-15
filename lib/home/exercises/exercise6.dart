import 'package:flutter/material.dart';

class Exercise6 extends StatelessWidget {
  const Exercise6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: double.infinity,
            height: double.infinity,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/waterFall.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SizedBox(
                height: 12,
              ),
              Text(
                'Philosophy of love',
                style: TextStyle(
                    letterSpacing: 0.25,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white60),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Love Never Say Sorry!',
                style: TextStyle(
                    letterSpacing: 0.25,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Spacer(),
              Align(
                alignment: Alignment(0.6, 0),
                child: Text(
                  'What will be will be!',
                  style: TextStyle(
                      letterSpacing: 0.25,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          )),
    );
  }
}
