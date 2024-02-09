import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Align(
          child: Text(
            "Menu Demo",
            style: TextStyle(color: Colors.white),
          ),
          alignment: Alignment.center,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Explore the restaurant's delicious menu items below!",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                GestureDetector(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/burguer.jpg',
                      width: 50, // Adjust the width as needed
                      height: 50, // Adjust the height as needed
                    ),
                    title: Text("Burger"),
                  ),
                ),
                GestureDetector(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/hotdog.jpg',
                      width: 50, // Adjust the width as needed
                      height: 50, // Adjust the height as needed
                    ),
                    title: Text("Hot Dog"),
                  ),
                ),
                GestureDetector(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/fries.png',
                      width: 50, // Adjust the width as needed
                      height: 50, // Adjust the height as needed
                    ),
                    title: Text("Fries"),
                  ),
                ),
                GestureDetector(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/soda.png',
                      width: 50, // Adjust the width as needed
                      height: 50, // Adjust the height as needed
                    ),
                    title: Text("Soda"),
                  ),
                ),
                GestureDetector(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icecream.jpg',
                      width: 50, // Adjust the width as needed
                      height: 50, // Adjust the height as needed
                    ),
                    title: Text("Ice Cream"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Text("Pickup"),
                  color: Colors.grey.shade400,
                ),
                VerticalDivider(
                  color: Colors.grey,
                  thickness: 4,
                  indent: 20,
                  endIndent: 20,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text("Delivery"),
                  color: Colors.grey.shade400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
