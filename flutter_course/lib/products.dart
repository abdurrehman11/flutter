import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  // Named arguments are wrapped in {} braces
  // Positional arguments are wrapped in [] braces
  Products([this.products = const []]) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCards;
    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      // productCards = Center(
      //   child: Text('No products found. Please add some!'),
      // );

      // In case, you don't want to return anything
      // this could avoid many errors (BE CAREFUL)
      productCards = Container();
    }

    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    // 'Column()' widget should be used when you have to stack
    // the elements vertically and you don't need to scroll the page

    // 'ListView()' is useful for static list of items(when no. of elements to be placed
    //  into list is already known)

    // If you want to dynamically render the list, use 'ListView.builder()'

    print('[Products Widget] build()');

    return _buildProductList();
  }
}
