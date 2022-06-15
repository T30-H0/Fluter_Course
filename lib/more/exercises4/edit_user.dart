import 'package:flutter/material.dart';

class EditUser extends StatelessWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit User"),
        centerTitle: true,
      ),
    );
  }
}
