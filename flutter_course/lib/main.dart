import 'package:flutter/material.dart';

import './product_manager.dart';

// flutter app will first the main() and will call it automatically
void main() => runApp(MyApp());

// A widget is an object so for each widget we implement a class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: ProductManager(startingProduct: 'Food Tester')),
    );
  }
}
