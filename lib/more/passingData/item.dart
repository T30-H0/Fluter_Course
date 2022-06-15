import 'package:flutter/material.dart';
import 'package:scratch_app/more/passingData/shopping_cart.dart';

class ListItem extends StatefulWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  var selectedProduct = [];
  var listProduct = [
    {
      'name': 'Vinh Nguyen',
      'level': 'Leader',
      'age': '30',
      'color': Colors.pink
    },
    {
      'name': 'Suu Pham',
      'level': 'Leader 2',
      'age': '29',
      'color': Colors.blue
    },
    {
      'name': 'Duy Pham',
      'level': 'Leader 3',
      'age': '28',
      'color': Colors.green
    },
    {
      'name': 'Ha Nguyen',
      'level': 'Leader 4',
      'age': '27',
      'color': Colors.red
    },
    {
      'name': 'Van Le',
      'level': 'Leader 5',
      'age': '26',
      'color': Colors.purple
    },
    {
      'name': 'Tan Nguyen',
      'level': 'Leader 6',
      'age': '25',
      'color': Colors.yellow
    },
    {'name': 'Tao ho', 'level': 'CIA', 'age': '23', 'color': Colors.orange},
    {'name': 'Duc Le', 'level': 'CIA', 'age': '23', 'color': Colors.lightBlue},
    {'name': 'Thuan Cao ', 'level': 'CIA', 'age': '23', 'color': Colors.brown},
    {
      'name': 'Thuan Le ',
      'level': 'CIA',
      'age': '23',
      'color': Colors.lightGreen
    },
    {
      'name': 'Phong Nguyen',
      'level': 'CIA',
      'age': '23',
      'color': Colors.deepPurpleAccent
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List Product'),
          backgroundColor: Colors.pink,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ShoppingCart(listSelected: selectedProduct),
                  ),
                );
              },
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: listProduct.length,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        margin: const EdgeInsets.only(top: 8, bottom: 8),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "${listProduct[index]['name']}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          selectedProduct.add(listProduct[index]);
                          print(selectedProduct);
                        },
                        style: TextButton.styleFrom(
                          alignment: Alignment.centerRight,
                          primary: Colors.black,
                        ),
                        child: const Text(
                          'Add',
                          style: TextStyle(fontSize: 16),
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
