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

class HomePage extends StatefulWidget {
  HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _isBurguerSelected = false;
  var _isHotDogSelected = false;
  var _isFriesSelected = false;
  var _isSodaSelected = false;
  var _isIceCreamSelected = false;

  void _cleanSelections() {
    _isBurguerSelected = false;
    _isHotDogSelected = false;
    _isFriesSelected = false;
    _isSodaSelected = false;
    _isIceCreamSelected = false;
  }

  String _getSelectedDish() {
    if (_isBurguerSelected) return 'Burger';
    if (_isHotDogSelected) return 'Hot Dog';
    if (_isFriesSelected) return 'Fries';
    if (_isSodaSelected) return 'Soda';
    if (_isIceCreamSelected) return 'Ice Cream';
    return 'Select a dish';
  }

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
                  onTap: () {
                    if (_isBurguerSelected) {
                      _cleanSelections();
                    } else {
                      _cleanSelections();
                      _isBurguerSelected = true;
                    }
                    setState(() {});
                  },
                  child: ListTile(
                    leading: Image.asset(
                      'assets/burguer.jpg',
                      width: 50,
                      height: 50,
                    ),
                    title: Text("Burger"),
                    tileColor:
                        _isBurguerSelected ? Colors.blue[800] : Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (_isHotDogSelected) {
                      _cleanSelections();
                    } else {
                      _cleanSelections();
                      _isHotDogSelected = true;
                    }
                    setState(() {});
                  },
                  child: ListTile(
                    leading: Image.asset(
                      'assets/hotdog.jpg',
                      width: 50,
                      height: 50,
                    ),
                    title: Text("Hot Dog"),
                    tileColor:
                        _isHotDogSelected ? Colors.blue[800] : Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (_isFriesSelected) {
                      _cleanSelections();
                    } else {
                      _cleanSelections();
                      _isFriesSelected = true;
                    }
                    setState(() {});
                  },
                  child: ListTile(
                    leading: Image.asset(
                      'assets/fries.png',
                      width: 50,
                      height: 50,
                    ),
                    title: Text("Fries"),
                    tileColor:
                        _isFriesSelected ? Colors.blue[800] : Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (_isSodaSelected) {
                      _cleanSelections();
                    } else {
                      _cleanSelections();
                      _isSodaSelected = true;
                    }
                    setState(() {});
                  },
                  child: ListTile(
                    leading: Image.asset(
                      'assets/soda.png',
                      width: 50,
                      height: 50,
                    ),
                    title: Text("Soda"),
                    tileColor:
                        _isSodaSelected ? Colors.blue[800] : Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (_isIceCreamSelected) {
                      _cleanSelections();
                    } else {
                      _cleanSelections();
                      _isIceCreamSelected = true;
                    }
                    setState(() {});
                  },
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icecream.jpg',
                      width: 50,
                      height: 50,
                    ),
                    title: Text("Ice Cream"),
                    tileColor:
                        _isIceCreamSelected ? Colors.blue[800] : Colors.white,
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
                  onPressed: () {
                    String selectedDish = _getSelectedDish();
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Pick Up'),
                            content: Text("$selectedDish"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("OK"))
                            ],
                          );
                        });
                  },
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
                  onPressed: () {
                    String selectedDish = _getSelectedDish();
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Delivery'),
                            content: Text("$selectedDish"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("OK"))
                            ],
                          );
                        });
                  },
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
