import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class RegisterPage extends StatelessWidget {

  static const routeName = "/registerPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconRegister(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconRegister() {
    return Image.asset(
      "assets/images/icon_login.png",
      width: 150.0,
      height: 150.0,
    );
  }

  Widget _titleDescription() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 27.0),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        Text(
          "Your Daily Reminder.",
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.brown,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _textField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey,
                width: 3.0,
              ),
            ),
            hintText: "Username",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.brown),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey,
                width: 3.0,
              ),
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.brown),
          obscureText: true,
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey,
                width: 3.0,
              ),
            ),
            hintText: "Confirm Password",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.brown),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              'Register',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          'or',
          style: TextStyle(
            color: Colors.brown,
            fontSize: 12.0,
          ),
        ),
        FlatButton(
          child: Text(
            'Login',
            style: TextStyle(color: Colors.brown),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
        ),
      ],
    );
  }
}