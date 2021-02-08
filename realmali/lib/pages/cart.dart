import 'package:flutter/material.dart';
import 'package:realmali/models/item.dart';
import 'package:realmali/widgets/cart_item.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Item> _items = [];

  circularProgress() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  gridView(AsyncSnapshot<List<Item>> snapshot) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: snapshot.data.map((item) {
          return null;
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, body: Center(child: Text("cart page")));
  }
}
