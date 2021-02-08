import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .05,
                left: MediaQuery.of(context).size.width * .1,
                bottom: 10),
            child: Text('Profile',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color((0xFFFAED25)),
                )),
          ),
          Container(
            color: Color(0xFFFAED25),
            height: 2,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .05,
              horizontal: MediaQuery.of(context).size.width * .075,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nom et Prénom',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Mansour Youmna >',
                        style: TextStyle(fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'youmna.mansour5@gmail.com >',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Téléphone',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '+2235552222 >',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date de Naissance',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '05 Janvier 1992 >',
                        style: TextStyle(fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
