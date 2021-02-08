import 'package:flutter/material.dart';
import 'package:realmali/pages/cart.dart';
import 'package:realmali/pages/first_page.dart';
import 'package:realmali/pages/user_info.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:realmali/assets/my_icons.dart';
import 'package:realmali/pages/notification.dart';

class HomePageReal extends StatefulWidget {
  static const routeName = '/homepage';
  @override
  _HomePageRealState createState() => _HomePageRealState();
}

class _HomePageRealState extends State<HomePageReal> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    FirstPage(),
    Notifications(),
    Cart(),
    UserInfo(),
  ];

  int _selectedIndex = 0;
  int _selectedNavigationBarIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Color(0xFFFAED25),
          buttonBackgroundColor: Color(0xFFFAED25),
          backgroundColor: Colors.white,
          height: 50,
          onTap: _onItemTapped,
          items: [
            Icon(
              Myicons.home,
              size: 20,
              color: Colors.black,
            ),
            Icon(
              Myicons.notification,
              size: 20,
              color: Colors.black,
            ),
            Icon(
              Myicons.cart,
              size: 20,
              color: Colors.black,
            ),
            Icon(
              Myicons.account,
              size: 20,
              color: Colors.black,
            ),
          ],
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 250),
        ));
  }
}
