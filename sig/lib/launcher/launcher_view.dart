import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sig/landing/landingpage_view.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override

  void initState(){
    super.initState();
    startLaunching();
  }

  startLaunching()async{
    var duration = const Duration(seconds: 2);
    return new Timer(duration, (){
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_){
        return new LandingPage();
      }));
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset(
          "assets/tourism.png",
          height: 400.0,
          width: 600.0,
        ),
      ),
    );
  }
}