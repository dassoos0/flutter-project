import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:realmali/models/item.dart';

class GridDetails extends StatefulWidget {
  static const routeName = '/details';
  final Item item;
  GridDetails({@required this.item});

  @override
  _GridDetailsState createState() => _GridDetailsState();
}

class _GridDetailsState extends State<GridDetails> {
  int _productQuantity = 1;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Navigator.pop(context, true);
          return false;
        },
        child: Scaffold(
            body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 27,
                    ),
                    onTap: Navigator.of(context).pop,
                  ),
                  Text(
                    'Retour',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * .4,
                child: Hero(
                  tag: 'images${widget.item.name}',
                  child: FadeInImage.assetNetwork(
                      placeholder: "images/assetimage.png",
                      image: widget.item.imageUrl),
                ),
              ),
              Text(
                'FCFA 5000',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Product Name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'category',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 15,
                color: Colors.blue,
                child: Text('rating is here'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'SAVEUR:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text('saveurs here'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'SIZE:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: Text('size here'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'QUANTITE:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  GestureDetector(
                    child: Container(
                      child: Text(
                        '-',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _productQuantity--;
                      });
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Text(
                      '$_productQuantity',
                      style: TextStyle(
                          color: Color(
                            0xFFFAED25,
                          ),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    child: Container(
                      child: Text(
                        '+',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _productQuantity++;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0xFFFAED25),
                width: MediaQuery.of(context).size.width * .67,
                child: FlatButton(
                  onPressed: () {},
                  child: Text('AJOUTEZ AU PANIER',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black)),
                  color: Color(0xFFFAED25),
                ),
              )
            ],
          ),
        )));
  }
}
