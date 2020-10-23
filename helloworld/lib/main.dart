import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var hello = " ";
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Material App
      home: Scaffold(
        appBar: AppBar(
          title: Text("New Flutter App"),
        ),
        body: Center(
          child: Text('$hello'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              hello = "Hello World";
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