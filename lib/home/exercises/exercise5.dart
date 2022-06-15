import 'package:flutter/material.dart';

class Exercise5 extends StatelessWidget {
  const Exercise5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: (Container(
          child: Column(
            children: const <Widget>[
              Image(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1549517045-bc93de075e53?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80",
                  ),
                  fit: BoxFit.contain),
              SizedBox(
                height: 30,
              ),
              Image(
                image: AssetImage('assets/images/house3.png'),
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
          ),
        )));
  }
}
