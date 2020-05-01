import 'package:flutter/material.dart';
import 'package:sig/constant.dart';
//import 'package:sig/constant.dart';

class LoginPage extends StatefulWidget {
  ///static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 100.0,
        child: Image.asset('assets/wtbr.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'ghina@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        fillColor: Colors.white,
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        fillColor: Colors.white,
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xff008000), Color(0xffFFFF00)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)
          ),
          child: Container(
            constraints: BoxConstraints(minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Login With Google",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: GojekPallete.green
              ),
            ),
          ),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Lupa Password ?',
        //style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );

    final textOr = Text(
      'Or', textAlign: TextAlign.center,
    );

    final whitGoogle = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        onPressed: () {},
        padding: EdgeInsets.all(15),
        color: GojekPallete.green,
        child: Text('Log In With Google', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      //backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 20.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 20.0),
            whitGoogle,
            //textOr,
            //loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}