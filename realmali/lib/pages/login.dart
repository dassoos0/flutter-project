import 'package:flutter/material.dart';
import 'package:realmali/pages/Signup.dart';
import 'package:realmali/widgets/textfield.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: GestureDetector(
                onTap: Navigator.of(context).pop,
                child: Container(
                    child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Color(0xFFFAED25),
                      size: 35,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('Retour',
                        style:
                            TextStyle(color: Color(0xFFFAED25), fontSize: 20))
                  ],
                )),
              ),
            ),
            Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .3,
                    child: Image.asset("images/logo.png")),
                Text(
                  "Se connectez",
                  style: TextStyle(
                      color: Color(0xFFFAED25),
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hint: 'Email ou Téléphone',
                  secured: false,
                  icon: LineAwesomeIcons.info,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Mot de passe',
                  secured: true,
                  icon: LineAwesomeIcons.info,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width,
                    height: 55,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xFFFAED25),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        'Se connecter',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('-ou-'),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(LineAwesomeIcons.google),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(LineAwesomeIcons.facebook)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 3),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignUpScreen.routeName);
                    },
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Pas de compte?",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.height / 53,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: "S'inscrire",
                            style: TextStyle(
                                color: Color(0xFFFAED25),
                                fontSize:
                                    MediaQuery.of(context).size.height / 53,
                                fontWeight: FontWeight.bold))
                      ]),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
