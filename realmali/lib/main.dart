import 'package:flutter/material.dart';
import 'package:realmali/pages/Signup.dart';
import 'package:realmali/pages/home_page.dart';
import 'package:realmali/pages/login.dart';
import 'package:realmali/pages/item_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: "ITCCenturyLTbook",
        ),
        debugShowCheckedModeBanner: false,
        // initialRoute: HomePage.routeName,
        home: HomePageReal(),
        routes: {
          HomePageReal.routeName: (context) => HomePageReal(),
          LoginScreen.routeName: (context) => LoginScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          GridDetails.routeName: (context) => GridDetails(
                item: null,
              ),
        });
  }
}
