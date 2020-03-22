import 'package:flutter/material.dart';
import 'package:instagram/widgets/my_flat_button.dart';
import 'package:instagram/widgets/my_text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage("assets/images/Instagram_logo_wordmark.png"),
                  width: 210,
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: MyTextField(
                    textInputType: TextInputType.emailAddress,
                    hint: "Email",
                    onChange: (value) {
                      setState(() {
                        _email = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: MyTextField(
                    isPassword: true,
                    hint: "Password",
                    onChange: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Color(0xFF0086EC),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 48),
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: MyFlatButton(
                      "Login",
                      onPressed: () {
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: MyFlatButton(
                      "Sign up",
                      onPressed: () {
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}