import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _colors = [Colors.red, Colors.blue, Colors.yellow, Colors.green, Colors.orange];
  var i = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Material App
      home: Scaffold(
        appBar: AppBar(
          title: Text("New Flutter App"),
        ),
        body: Center(
          child: Text("Hello World" ,
            style: TextStyle(color: _colors[i] , fontSize: 25.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              Random random = new Random();
              i = random.nextInt(_colors.length);
            });
          },
          child: Icon(Icons.add_outlined),
        ),
      ),
    );
  }
}


/*
  Widgets Used:
  - MaterialApp: The main core component of Flutter. Can access all the other
    components and widgets provided by the Flutter SDK.
  - Scaffold: Implements the basic material design visual layout structure.
    Allows programmers to add basic widgets like an app bar, modify the body of the app
  - Center: widgets that places widgets in the middle of the page
  - Text: User's can add messeges in this widget


 */