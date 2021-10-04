import 'package:assignment11/page2.dart';
import 'package:assignment11/page3.dart';
import 'package:assignment11/page4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: page4(),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedIcon = "car";

  IconData getIconSelected() {
    if (selectedIcon == 'car') {
      return Icons.car_rental;
    } else if (selectedIcon == 'transit') {
      return Icons.train;
    } else if (selectedIcon == 'car1') {
      return Icons.car_rental;
    } else {
      return Icons.pedal_bike;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIcon = 'car';
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 110,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(8.0),
                            color: selectedIcon == 'car'
                                ? Colors.red.shade500
                                : Colors.grey.shade500,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.car_rental,
                                  color: selectedIcon == 'car'
                                      ? Colors.white
                                      : Colors.black,
                                  size: 30,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'car',
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: selectedIcon == 'car'
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIcon = 'transit';
                        });
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 16.0),
                        child: Container(
                          width: 110,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(8.0),
                            color: selectedIcon == 'transit'
                                ? Colors.red.shade500
                                : Colors.grey.shade500,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 00.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.train,
                                  color: selectedIcon == 'transit'
                                      ? Colors.white
                                      : Colors.black,
                                  size: 30,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'transit',
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: selectedIcon == 'transit'
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIcon = 'bike';
                        });
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 16.0),
                        child: Container(
                          width: 110,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(8.0),
                            color: selectedIcon == 'bike'
                                ? Colors.red.shade500
                                : Colors.grey.shade500,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 20.0),
                            child: Icon(
                              Icons.pedal_bike,
                              color: selectedIcon == 'bike'
                                  ? Colors.white
                                  : Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIcon = 'car1';
                        });
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 16.0),
                        child: Container(
                          width: 110,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(8.0),
                            color: selectedIcon == 'car1'
                                ? Colors.red.shade500
                                : Colors.grey.shade500,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 20.0),
                            child: Icon(
                              Icons.car_rental_sharp,
                              color: selectedIcon == 'car1'
                                  ? Colors.white
                                  : Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Icon(
                getIconSelected(),
                color: Colors.black,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
