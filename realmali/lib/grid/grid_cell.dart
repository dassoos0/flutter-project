import 'package:flutter/material.dart';
import 'package:realmali/models/item.dart';

class ItemCell extends StatelessWidget {
  @required
  final Item item;

  const ItemCell(this.item);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Hero(
                  tag: "images${item.name}",
                  child: FadeInImage.assetNetwork(
                    placeholder: "images/logo.png",
                    image: item.imageUrl,
                    width: 100,
                    height: 100,
                  ),
                ),
              )),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  item.name,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
