import 'package:flutter/material.dart';
import 'package:scratch_app/constants.dart';
import 'package:scratch_app/more/passingData/item.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var email = '';
    var password = '';
    bool inValidEmail = false;
    bool inValidPassword = false;

    onGo() {
      if (email.isNotEmpty && password.isNotEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ListItem()),
        );
      } else if (email.isEmpty && password.isEmpty) {
        inValidEmail = true;
        inValidPassword = true;
      } else if (email.isEmpty) {
        inValidEmail = true;
      } else if (password.isEmpty) {
        inValidPassword = true;
      }
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to my basic app',
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink)),
                hintText: 'Enter your email',
                labelText: 'Email',
                errorText: inValidEmail ? 'Email can not be null' : null,
              ),
              onChanged: (content) {
                inValidEmail = false;
                email = content;
              },
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            TextField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink)),
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  errorText:
                      inValidPassword ? 'Password can not be null' : null),
              obscureText: true,
              onChanged: (content) {
                inValidPassword = false;
                password = content;
              },
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            OutlinedButton(
              onPressed: onGo,
              child: const Text(
                'Go',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(screenW(context) - 40, 48),
                padding: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class More extends StatelessWidget {
//   const More({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Navigation demo"),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const Dashboard()));
//             },
//             child: const Text('text'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Dashboard extends StatelessWidget {
//   const Dashboard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go Back'),
//         ),
//       ),
//     );
//   }
// }
