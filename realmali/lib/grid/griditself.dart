import 'package:flutter/material.dart';
import 'package:realmali/models/item.dart';
import 'package:realmali/grid/grid_cell.dart';
//import 'package:realmali/pages/item_detail.dart';
import 'package:realmali/network/network_request.dart';
import 'package:realmali/pages/item_detail.dart';

class GridItself extends StatefulWidget {
  @override
  _GridItselfState createState() => _GridItselfState();
}

class _GridItselfState extends State<GridItself> {
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
          return GestureDetector(
            child: GridTile(
              child: ItemCell(item),
            ),
            onTap: () {
              gotoDetailpage(context, item);
            },
          );
        }).toList(),
      ),
    );
  }

  gotoDetailpage(BuildContext context, Item item) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => GridDetails(item: item)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: FutureBuilder<List<Item>>(
              future: NetworkRequest.fetchItems(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error ${snapshot.error}');
                } else if (snapshot.hasData) {
                  return gridView(snapshot);
                }
                return circularProgress();
              },
            ),
          )
        ],
      ),
    );
  }
}
