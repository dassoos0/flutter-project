import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:realmali/assets/my_icons.dart';
import 'package:realmali/grid/griditself.dart';
import 'package:realmali/widgets/Carousel.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _current = 0;
  int _selectedIndex = 0;

  List<String> _iconNames = [
    'Tequila',
    'Rum',
    'Vodka',
    'whiskey',
    'Vin',
    'Jus',
    'Vodka',
    'Vodka',
    'Vodka',
    'Vodka',
    'Vodka',
  ];
  List<IconData> _icons = [
    Myicons.tequila,
    Myicons.rum,
    Myicons.vodka,
    Myicons.whiskey,
    Myicons.wine,
    Myicons.juice,
    Myicons.whiskey,
    Myicons.whiskey,
    Myicons.whiskey,
    Myicons.whiskey,
    Myicons.whiskey,
  ];
  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(
                _icons[index],
                size: 40,
                color:
                    _selectedIndex == index ? Color(0xFFFAED25) : Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2, right: 2, bottom: 2),
            child: Text(_iconNames[index]),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * .23,
              child: Carousel(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 95,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _icons
                    .asMap()
                    .entries
                    .map((MapEntry map) => _buildIcon(map.key))
                    .toList(),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .7,
                child: GridItself())
          ],
        ),
      ),
    );
  }
}
