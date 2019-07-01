import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  // Named arguments are wrapped in {} braces
  // Positional arguments are wrapped in [] braces
  ProductManager({this.startingProduct = 'Sweets Tester'}) {
    print('[Product Manager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[Product Manager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  // when we add data to 'final', it does not give error because
  // data is adding to same memory reference but if we try to
  // change the memory reference (assignment of variable) which has
  // been declared final, then it will give error ...

  // If we declare a variable to be 'const', now if try to change the
  // value of this variable, it will give us error ...

  final List<String> _products = [];

  @override
  void initState() {
    print('[Product Manager State] initState()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[Product Manager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[Product Manager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Products(_products)
      ],
    );
  }
}
