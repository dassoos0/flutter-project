import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:realmali/pages/login.dart';
import 'package:realmali/widgets/textfield.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signup';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                Text(
                  "S'inscrire",
                  style: TextStyle(
                      color: Color(0xFFFAED25),
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hint: 'Nom et prénom',
                  secured: false,
                  icon: LineAwesomeIcons.user,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Email',
                  secured: false,
                  icon: LineAwesomeIcons.info,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Téléphone',
                  secured: false,
                  icon: LineAwesomeIcons.phone,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Mot de passe',
                  secured: true,
                  icon: LineAwesomeIcons.lock,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Confirmez le mot de passe',
                  secured: true,
                  icon: LineAwesomeIcons.lock,
                ),
                SizedBox(
                  height: 9,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Checkbox(
                          value: checkBoxValue,
                          onChanged: (bool value) {
                            setState(() {
                              checkBoxValue = value;
                            });
                          }),
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        'J\'ai lu et j\'accepte les Termes et Conditions',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
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
                        'Créez',
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
                  padding: EdgeInsets.only(top: 10, bottom: 3),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginScreen.routeName);
                    },
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Vous avez un compte?",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.height / 53,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: "Se connectez",
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
