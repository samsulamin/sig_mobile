import 'package:flutter/material.dart';

class KotaKatDll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(100.0),),
            new Image.asset(
              "assets/icons/mountain.png",
              width: 90.0,
              height: 90.0,          
            ),
            new Padding(padding: new EdgeInsets.all(10.0),),
            new Text(
              "Wisata Not Found",
              style: new TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }
}