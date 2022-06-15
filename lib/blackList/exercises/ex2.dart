import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../constants.dart';

class Ex2 extends StatefulWidget {
  const Ex2({Key? key}) : super(key: key);

  @override
  State<Ex2> createState() => _Ex2State();
}

class _Ex2State extends State<Ex2> {
  var member = [
    {'name': 'Vinh Nguyen', 'level': 'Leader', 'age': '30'},
    {'name': 'Suu Pham', 'level': 'Leader 2', 'age': '29'},
    {'name': 'Duy Pham', 'level': 'Leader 3', 'age': '28'},
    {'name': 'Ha Nguyen', 'level': 'Leader 4', 'age': '27'},
    {'name': 'Van Le', 'level': 'Leader 5', 'age': '26'},
    {'name': 'Tan Nguyen', 'level': 'Leader 6', 'age': '25'},
    {'name': 'Tao ho', 'level': 'CIA', 'age': '23'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Therapist', style: TextStyle(color: Colors.black)),
          actions: const <Widget>[
            IconButton(
              icon: Icon(
                Icons.filter_list,
                color: Colors.black,
              ),
              onPressed: null,
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: CarouselSlider(
                options: CarouselOptions(height: 140.0),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: screenW(context),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(12)),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Nearby Therapists',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: member.length,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 180,
                        height: 120,
                        margin: const EdgeInsets.only(top: 8, bottom: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Container(
                        height: 120,
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "${member[index]['name']}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              "Level: ${member[index]['level']}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "Age: ${member[index]['age']}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
