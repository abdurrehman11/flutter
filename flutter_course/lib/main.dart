import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './product_manager.dart';

// flutter app will first the main() and will call it automatically
void main() {
  // these options are for debugging of UI Layout
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;

  runApp(MyApp());
}

// A widget is an object so for each widget we implement a class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // this is also for debugging of UI (placement of widgets)
      debugShowMaterialGrid: true,
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
